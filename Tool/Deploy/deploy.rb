# Functions
def run(command, ignoresMessage: true)
    `#{command} #{ignoresMessage ? "2>&1 >/dev/null" : ""}`
    return $?.exitstatus == 0
end

def deploy(server)
    # Checkout target server branch.
    if !run("git checkout #{server}")
        puts "💫 #{server} not exists. Creating server..."
    
        run("git branch #{server}")
        if !run("git checkout #{server}")
            abort("Something went wrong")
        end
    end

    # Generate API specification
    
    
    # Commit all changes.
    run("git add .")
    run("git commit -m 'feat(): deploy changes'")
    
    # Push to remote repository.
    puts "🚀 Deploying to #{server}..."
    if !run("git push origin refs/heads/#{server}")
        abort("Something went wrong")
    end

    puts "🚀 Deploy to #{server} completed."
end

# Main
def main(argv)
    # Get arguments
    server = argv[0]

    if server.nil?
        # Exit when required argument missing.
        abort("Usage: ruby deploy.rb <server name>")
    end
    
    deploy(server)
end

main(ARGV)
