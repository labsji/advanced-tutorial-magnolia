<meta http-equiv="refresh" content="120" />
<script src="https://rawgit.com/sdkcarlos/artyom.js/master/build-vanilla/artyom.min.js"> </script>
<script>
         artyom.initialize({
            lang:"en-GB",// A lot of languages are supported. Read the docs !
            continuous:false,// recognize 1 command and stop listening !
            listen:true, // Start recognizing
            debug:true, // Show everything in the console
            speed:1 // talk normally
        }).then(function(){
            console.log("Ready to work !");
        }); 
</script>
<div class="voice">
[#assign vmsgroot = cmsfn.nodeByPath("/voiceclock", "messages")]
[#assign vmessages = cmsfn.children(vmsgroot, "mgnl:content") ]
[#assign childrenNodesAsContentMaps = cmsfn.asContentMapList(vmessages)]
[#list childrenNodesAsContentMaps as child ]
  [#assign recent =  ( .now?long - child.timestamp?number ) ]
  [#-- ${child.message!} ^^   ${recent} --]
  [#if  recent &lt; 120000 ]
	<script>
	var msg = "${child.message?js_string}: ${child.timestamp?number?number_to_time}";
	artyom.say(msg);
	</script>
  [/#if]
[/#list]
</div>
