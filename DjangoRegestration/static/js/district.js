$(document).ready(function ()
        {
            $('select#state').change(function ()
            {
                var optionSelected = $(this).find("option:selected");
                var valueSelected = optionSelected.val();
                var stateName = optionSelected.text();

                data = {'statedata':stateName}
                //console.log(data)
                ajax('/getstatedetails',data,function (result)
                {
                    $("#district option").remove();
                    //console.log(result)
                    $("#district").append("<option value='Choose District'>Choose District</option>");
                    for (var i = result.length-1;i>=0;i--)
                    {
                        //console.log(result[i].name)
                        $("#district").append("<option value="+"\""+result[i].name+"\""+" >"+result[i].name+"</option>");
                    }

                });
            });
        });