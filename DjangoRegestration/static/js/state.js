$(document).ready(function ()
        {
            $('select#country').change(function ()
            {
                var optionSelected = $(this).find("option:selected");
                var valueSelected = optionSelected.val();
                var countryName = optionSelected.text();

                data = {'countrydata':countryName}
                //console.log(data)
                ajax('/getdetails',data,function (result)
                {
                    $("#state option").remove();
                    //console.log(result)
                    $("#state").append("<option value='Choose State'>Choose State</option>")
                    for (var i = result.length-1;i>=0;i--)
                    {
                        //console.log(result[i].name)
                        $("#state").append("<option value="+"\""+result[i].name+"\""+" >"+result[i].name+"</option>");
                    }
                });
            });
        });