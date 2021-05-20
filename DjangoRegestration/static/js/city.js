$(document).ready(function ()
        {
            $('select#district').change(function ()
            {
                var optionSelected = $(this).find("option:selected");
                var valueSelected = optionSelected.val();
                var districtName = optionSelected.text();

                data = {'districtdata':districtName}
                ajax('/getdestrictdetails',data,function (result)
                {
                    $("#city option").remove();
                    $("#city").append("<option value='Choose City'>Choose City</option>");
                    for (var i = result.length-1;i>=0;i--)
                    {
                        $("#city").append("<option value="+"\""+result[i].name+"\""+" >"+result[i].name+"</option>");
                    }

                });
            });
        });