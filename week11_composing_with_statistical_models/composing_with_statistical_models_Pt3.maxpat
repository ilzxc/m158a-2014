{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x86"
		}
,
		"rect" : [ 0.0, 44.0, 1280.0, 706.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-36",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 2215.0, 417.0, 47.0 ],
					"presentation_rect" : [ 21.0, 2111.0, 0.0, 0.0 ],
					"text" : "Great! Now we can combine the best of both worlds according to our needs!\nLet's talk about probabilistic drum machines.\nWe're going to use slides for this!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 2080.0, 221.0, 20.0 ],
					"presentation_rect" : [ 204.0, 2063.0, 0.0, 0.0 ],
					"text" : "Run the python script to start the server"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1796.0, 107.0, 21.0 ],
					"presentation_rect" : [ 19.0, 1843.0, 0.0, 0.0 ],
					"text" : "Start OSC server"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-32",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1817.0, 495.0, 221.0 ],
					"presentation_rect" : [ 20.0, 1889.0, 0.0, 0.0 ],
					"text" : "We start the OSC server in it's own thread and set it to serve forever \n    st = threading.Thread( target = osc_server.serve_forever )\n    st.start()\n\n    try:\n        while 1:\n            time.sleep(5)\n\nThe message blocks the thread in which we're making the call until the thread st is finished\n\nexcept KeyboardInterrupt :\n    print \"\\nClosing OSCServer.\"\n    osc_server.close()\n    print \"Waiting for Server-thread to finish\"\n    st.join()\n    print \"Done!\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-30",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1708.0, 599.5, 60.0 ],
					"presentation_rect" : [ 11.0, 1734.0, 0.0, 0.0 ],
					"text" : "Now, we have to add the message handlers such the the OSC server knows which function to call upon receival of a OSC address.\n\n    osc_server.addMsgHandler(\"/repeater\", repeater_handler)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1687.0, 113.0, 21.0 ],
					"presentation_rect" : [ 20.0, 1687.0, 0.0, 0.0 ],
					"text" : "Register Handlers"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1085.0, 253.0, 21.0 ],
					"presentation_rect" : [ 21.0, 1073.0, 0.0, 0.0 ],
					"text" : "Server and Client connection Instantiation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1261.0, 62.0, 21.0 ],
					"presentation_rect" : [ 25.0, 1401.0, 0.0, 0.0 ],
					"text" : "Handlers"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1401.0, 599.5, 234.0 ],
					"presentation_rect" : [ 21.0, 1539.0, 0.0, 0.0 ],
					"text" : "We're going to define a handler called repeater_handler that calls a method repeater.\n\n    def repeater_handler(addr, tags, stuff, source):\n        print \"---\"\n        print \"received new osc msg from %s\" % OSC.getUrlStr(source)\n        print \"with addr : %s\" % addr\n        print \"typetags %s\" % tags\n        print \"data %s\" % stuff\n        print \"---\"\n\n        count = stuff[0]\n        message = stuff[1]\n        full_message = repeater(count, message)\n        osc_client.send( OSC.OSCMessage(\"/repeater/message\", full_message ) )\n\n    def repeater(count, message):\n        return ' '.join([message] * count)\n"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-23",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1282.0, 599.5, 87.0 ],
					"presentation_rect" : [ 15.0, 1296.0, 0.0, 0.0 ],
					"text" : "Handlers are methods that parse OSC messages sent to the server. These methods take four inputs, including:\n\naddr: the OSC address sent received by the OSC Server\ntags: i for integer s for string...\nstuff: data sent by the client\nsource: client's ip address and port "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-19",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 1106.0, 599.5, 114.0 ],
					"presentation_rect" : [ 21.0, 1065.0, 0.0, 0.0 ],
					"text" : "We have to instantiate the OSCServer, OSCClient, add the respective default handlers and connect to the client's address (send address)\n\n    osc_server = OSC.OSCServer(receive_address)\n    osc_server.addDefaultHandlers()\n\n    osc_client = OSC.OSCClient()\n    osc_client.connect( send_address )"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 845.0, 141.0, 21.0 ],
					"presentation_rect" : [ 19.0, 841.0, 0.0, 0.0 ],
					"text" : "Python in Max via OSC"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 2116.0, 187.0, 18.0 ],
					"text" : "/repeater 10 \"this is phenomenal\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 2145.0, 147.0, 20.0 ],
					"text" : "udpsend 127.0.0.1 54321"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 129.0, 621.0, 183.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-24",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 866.0, 599.5, 167.0 ],
					"text" : "Let's look at how to set-up a OSC server with python.\n\nThe first basic step is to import what is necessary:\n    import OSC\n    import time, threading\n\nOur OSC server is going to listen at some ip and port and send to some ip and port. The OSC Server is going to listen at host 127.0.0.1 and port 54321; it is going to send messages to host 127.0.0.1 and port 31337.\nNotice that we are already listening to messages on port 31337\n\n    receive_address = '127.0.0.1', 54321\n    send_address = '127.0.0.1', 31337"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 557.5, 741.0, 213.0, 33.0 ],
					"text" : "Notice what happens with if you use the comma in your message :"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpargs.js",
					"id" : "obj-31",
					"ignoreclick" : 1,
					"jsarguments" : [ "udpreceive" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 669.0, 629.0, 215.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 129.0, 592.0, 253.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 109, 101, 115, 115, 97, 103, 101, 0, 0, 0, 0, 44, 115, 0, 0, 65, 114, 101, 32, 121, 111, 117, 32, 116, 104, 101, 114, 101, 44, 32, 79, 83, 67, 63, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/message : \"Are you there, OSC?\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-17",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 537.0, 420.0, 47.0 ],
					"text" : "The udp family sends and receives messages through the network using the User Datagram Protocol. Notice that we can also send O. (OSC) Packets \"Full Packet\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 557.5, 774.0, 63.0, 18.0 ],
					"text" : "Yes, I am!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 557.5, 803.0, 147.0, 20.0 ],
					"text" : "udpsend 127.0.0.1 73313"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 803.0, 89.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 766.0, 106.0, 20.0 ],
					"text" : "udpreceive 73313"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 563.0, 663.0, 106.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 621.0, 89.0, 18.0 ],
					"text" : "Are you there?"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpargs.js",
					"id" : "obj-6",
					"ignoreclick" : 1,
					"jsarguments" : [ "udpsend" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 165.0, 651.0, 125.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 651.0, 147.0, 20.0 ],
					"text" : "udpsend 127.0.0.1 31337"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 563.0, 629.0, 106.0, 20.0 ],
					"text" : "udpreceive 31337"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 516.0, 152.0, 21.0 ],
					"text" : "udpsend and udpreceive"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 452.0, 593.0, 33.0 ],
					"text" : "To avoid this, we're going to set up an OSC server (Open Sound Control). We can communicate with this server by using max's udpsend and udpreceive objects."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-194",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 377.0, 574.0, 60.0 ],
					"text" : "Python in Max comes in different flavors. Some of you have used the py.mxo external that runs python code within max. py.mxo is a very powerfull tool but comes with some limitations : since both max and py.mxo run on the same thread, max will be unacessible as long as python is busy using. For example, if you put python to sleep, max will sleep as well."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 356.0, 92.0, 21.0 ],
					"text" : "Python in Max"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-50",
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 107.0, 570.0, 207.0 ],
					"text" : "Last week we learned some of the concept srelated to composition, statistical models and constraints. Altogether, we build mathetical and knowledge based models for analysis and generation of music. \n\nFor analysis, we built two simple analysis engines that are able to estimate the key of a given midi stream, and the type and root of a given chord. \n\nFor generation, we built two improvisers. The first improvised on scales conditional on the type of the chord being played; the second improvised on a chord progression whose pitch distribution would evolve in type and conditional on the harmonies prescribed. \n\nWe're going to start this class by showing you how to use python in max using an OSC server.\nOnce we're done, we're going to have a very exciting quizz, where you're going to work in pairs to build a probabilistic drum machine! ",
					"textcolor" : [ 0.0, 0.0, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 20.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 33.5, 528.0, 30.0 ],
					"text" : "Week 10 // Composing with Statistical Models  / Part 3"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 58.5, 98.0, 26.0 ],
					"text" : "Music 158A"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "helpargs.js",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/help-resources",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/help-resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
