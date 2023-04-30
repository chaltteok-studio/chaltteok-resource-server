# API Specifications
<details>
<summary> GET /the-code/common/config/v1 </summary>
&nbsp;

Get application configruation values.

### Request
<table>
    <thead>
        <tr>
            <th> Field </th>
            <th> Type </th>
            <th> Required </th>
            <th> Description </th>
        </tr>
    </thead>
    <tbody>
    </tbody>
</table>

### Response
<table>
    <thead>
        <tr>
            <th> Field </th>
            <th> Type </th>
            <th> Required </th>
            <th> Description </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td> limit_api_call </td>
            <td> Bool </td>
            <td> ✅ </td>
            <td> Indicate application's api call limited. </td>
        </tr>
        <tr>
            <td> minimum_version </td>
            <td> String </td>
            <td> ✅ </td>
            <td> Available minimum application version. </td>
        </tr>
    </tbody>
</table>
</details><details>
<summary> GET /the-code/common/time/v1 </summary>
&nbsp;

Get server GMT time.

### Request
<table>
    <thead>
        <tr>
            <th> Field </th>
            <th> Type </th>
            <th> Required </th>
            <th> Description </th>
        </tr>
    </thead>
    <tbody>
    </tbody>
</table>

### Response
<table>
    <thead>
        <tr>
            <th> Field </th>
            <th> Type </th>
            <th> Required </th>
            <th> Description </th>
        </tr>
    </thead>
    <tbody>
    </tbody>
</table>
</details><details>
<summary> GET /the-code/notices/v1 </summary>
&nbsp;

Get the code application's notice list.

### Request
<table>
    <thead>
        <tr>
            <th> Field </th>
            <th> Type </th>
            <th> Required </th>
            <th> Description </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td> locale </td>
            <td> String </td>
            <td> true </td>
            <td> Locale of notice. </td>
        </tr>
    </tbody>
</table>

### Response
<table>
    <thead>
        <tr>
            <th> Field </th>
            <th> Type </th>
            <th> Required </th>
            <th> Description </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td> id </td>
            <td> String </td>
            <td> ✅ </td>
            <td> Identifier of the notice. </td>
        </tr>
        <tr>
            <td> url </td>
            <td> String </td>
            <td> ✅ </td>
            <td> The URL of notice. </td>
        </tr>
        <tr>
            <td> title </td>
            <td> String </td>
            <td> ✅ </td>
            <td> Title of the notice. </td>
        </tr>
        <tr>
            <td> createdAt </td>
            <td> String </td>
            <td> ✅ </td>
            <td> Created at of the notice. </td>
        </tr>
    </tbody>
</table>
</details>