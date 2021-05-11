using System;
using System.Collections.Generic;

namespace Activity.ZP.Template
{
    public partial class Resource
    {
         public Dictionary<string, object> EchoString(string stringToEcho) {
 
            return new Dictionary<string, object> {
                {"result", $"I passed the string:'{stringToEcho}' to my first Activity!"}
            };
        } 
    }
}
