<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function validate() {
            var fields = ["firstname", "lastname", "gender", "description"];
            var i, l = fields.length;
            var field;
            for (i = 0; i < l; i++) {
                field = fields[i];
                if (document.forms["form1"][field].value === "") {
                    alert(field + " can not be empty!");
                    return false;
                }
            }
            return true;
        }
        function addRow() {
            var firstname = $('#firstname').val();
            var lastname = $('#lastname').val();
            var gender = document.forms["form1"]["gender"].value;
            var description = $('#description').val();

            $('#table tr:last').after('<tr><td>' + firstname + '</td><td>' + lastname
                + '</td><td>' + gender + '</td><td>' + description + '</td></tr>');
            return true;
        }
    </script>
    <style type="text/css">
        .top-buffer{
            margin-top: 40px;
        }
    </style>
</head>
<body>

<div class="container-fluid">
    <form id="form1">
        <div class="form-group top-buffer" style="max-width:250px">
            <label for="firstname">First name</label>
            <input type="text" class="form-control" id="firstname">
        </div>
        <div class="form-group" style="max-width:250px">
            <label for="lastname">Last name</label>
            <input type="text" class="form-control" id="lastname">
        </div>
        <div class="form-group">
            <label class="radio-inline"><input type="radio" name="gender" value="male">Male</label>
            <label class="radio-inline"><input type="radio" name="gender" value="female">Female</label>
        </div>
        <div class="form-group" style="max-width:250px">
            <label for="description">Description</label>
            <textarea class="form-control" rows=2 id="description"></textarea>
        </div>
        <div class="form-group">
            <button type="button" class="btn btn-default" onclick="return validate() && addRow();">Submit</button>
        </div>
    </form>
    <table class="table top-buffer" id="table">
        <thead>
        <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Gender</th>
            <th>Description</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>

</body>
</html>
