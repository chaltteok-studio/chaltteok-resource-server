require 'yaml'
require 'erb'

# Functions
def generate(templatePath, outputPath)
    # Load ERB template file.
    template = File.read(templatePath)

    # Generate specification file.
    specification = "# API Specifications\n"

    # Load all spec.yaml.
    specs = Dir["**/spec.yaml"]
    specs.each do |spec|
        yaml = YAML.load_file(spec)
        # Convert spec.yaml to formatted string.
        specification += ERB.new(template, trim_mode: "-").result(binding)
    end
    
    # Override result to README.md
    File.write("#{outputPath}", specification)
end

# Main
def main(argv)
    # Get arguments
    templatePath = argv[0]
    outputPath = argv[1]

    if templatePath.nil? || outputPath.nil?
        # Exit when required argument missing.
        abort("Usage: ruby spec.rb <template path> <output path>")
    end

    generate(ARGV[0], ARGV[1])
end

main(ARGV)
