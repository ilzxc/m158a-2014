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
		"rect" : [ -359.0, -1058.0, 1919.0, 1012.0 ],
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
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 4696.0, 83.0, 21.0 ],
					"presentation_rect" : [ 701.0, 3961.0, 0.0, 0.0 ],
					"text" : "interpolation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 3395.0, 164.0, 21.0 ],
					"presentation_rect" : [ 49.0, 3455.0, 0.0, 0.0 ],
					"text" : "compression and inversion"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 3174.0, 54.0, 21.0 ],
					"presentation_rect" : [ 49.0, 3171.0, 0.0, 0.0 ],
					"text" : "bin size"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 839.0, 1033.0, 32.5, 20.0 ],
					"presentation_rect" : [ 838.5, 1033.0, 0.0, 0.0 ],
					"text" : "sel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 780.0, 1033.0, 32.5, 20.0 ],
					"presentation_rect" : [ 772.75, 1034.0, 0.0, 0.0 ],
					"text" : "sel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 726.0, 1033.0, 32.5, 20.0 ],
					"text" : "sel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 6267.5, 55.0, 20.0 ],
					"text" : "skeleton"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 6287.5, 55.0, 20.0 ],
					"text" : "wedding",
					"varname" : "wedding"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-751",
					"linecount" : 23,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 5949.5, 638.0, 315.0 ],
					"text" : "1) Knowledge based specifications:\n    a) The bass and the tenor cannot play octaves or unissons. \n    b) The soprano and the alto cannot play octaves or unissons. \n    c) The interval between the bass and the tenor cannot be smaller than -24 MIDI cents\n    d) The interval between the alto and the soprano cannot be smaller than -12 MIDI cents\n\n2) The algorithm must sample from the distributions as follows :\n    a) using the wedding.json file\n    a) at a slow pace, about 2000ms\n    c) ensuring that all specifications are met before outputing a chord\n\n3) For playing the music\n        Sample from all four distributions at the same time\n        Create variables to store the notes and the chords\n        While all specifications are not met:\n            query the lowest voice again in the pair (bass or alto)\n            watch out for feedback loops as max is very bad with recurssion. Consider using uzi.\n\nExtra:\nYour friend's partner wants a church organ sound.\nThe chord durations should be 75% of the time 2000ms and 25% 4000ms.\nYour friend loves dubstep and wants you to start think about a drummer improviser for after wedding party, which\nis going to happen on monday!"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-750",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.0, 5800.0, 116.0, 26.0 ],
					"text" : "Case Study!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-749",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 5833.5, 634.0, 114.0 ],
					"text" : "Your dear friend is going to marry in 45 minutes ... and the cd with his classical and solemn weeding song broke !!!!\nYou love your friend and will help him out by sending him his favourite wedding music : a 4-voice chorale based on pitch distributions your friend saved on some pattr presets you found on his computer. With that file, you also found a list of specifications\nthat you friend would like the chorale to have.\nA skeleton of the implementation was found on github and is provided.\n\nHere are the details:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-102",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.0, 5651.0, 69.0, 20.0 ],
					"text" : "store state"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-101",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.0, 5651.0, 69.0, 20.0 ],
					"text" : "recall state"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-97",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.0, 5678.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-95",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.0, 5678.0, 32.5, 19.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-94",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 169.0, 5678.0, 50.0, 19.0 ],
					"text" : "store 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 324.75, 5678.0, 32.5, 19.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-93",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 104.0, 5678.0, 50.0, 19.0 ],
					"text" : "store 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-92",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 771.0, 5520.0, 478.0, 60.0 ],
					"text" : "Add a scripting name to the multislider below such that it is mapped by the pattr system. You can do this using the inspector.\nAfter this, save two states using pattrstorage and interpolate between them by using\na float box."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-88",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 771.0, 5493.0, 64.0, 21.0 ],
					"text" : "Try it"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-86",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 5601.0, 470.0, 33.0 ],
					"text" : "pattrstorage saves the states of UI objects and allows the user to set different paramenters such as activity, interpolation mode, priority."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 5580.0, 64.0, 21.0 ],
					"text" : "autopattr"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-81",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 5473.0, 470.0, 47.0 ],
					"text" : "It stores the state of UI objects which have a scripting name.\nBy setting the @autoname attribute to 1, autopattr automatically names the UI objects on the max screen and includes them in the pattr system "
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 5452.0, 64.0, 21.0 ],
					"text" : "autopattr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 801.0, 5601.0, 147.0, 135.0 ],
					"size" : 4
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 104.0, 5728.0, 125.0, 20.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 854, 172, 1254, 326 ],
						"parameter_enable" : 0,
						"storage_rect" : [ 766, 44, 1220, 302 ]
					}
,
					"text" : "pattrstorage my_pattr",
					"varname" : "my_pattr"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 199.0, 5520.0, 137.0, 20.0 ],
					"text" : "autopattr @autoname 0",
					"varname" : "u310012229"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 5383.0, 617.0, 33.0 ],
					"text" : "Now that we now to learn distribution and do operations on them, it's time to learn how to save and load them in max!"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 5430.0, 100.0, 21.0 ],
					"text" : "Storing Objects"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-42",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 5312.0, 617.0, 47.0 ],
					"text" : "OK. But what if we want to interpolate between many distributions, like we did with vector synthesis control\nRemember the radial basis function interpolator (a.k.a. rbfi) ? The concept remains, and we can use it to interpolate between any number of distributions!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 571.0, 5101.0, 32.5, 20.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 317.5, 5101.0, 32.5, 20.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 64.0, 5251.0, 89.0, 20.0 ],
					"text" : "prepend setlist"
				}

			}
, 			{
				"box" : 				{
					"border_left" : 0,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candycane" : 12,
					"ghostbar" : 30,
					"id" : "obj-19",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 319.5, 4980.0, 232.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"settype" : 0,
					"size" : 10,
					"spacing" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 64.0, 5218.0, 179.0, 20.0 ],
					"text" : "o.route /distribution/interpolated"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 317.5, 5074.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 64.0, 5134.0, 526.0, 20.0 ],
					"text" : "o.pack /distribution/left /interpolation /distribution/right"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 64.0, 5172.0, 819.0, 32.0 ],
					"text" : "/distribution/interpolated = (/distribution/left * /interpolation) + (/distribution/right * (1- /interpolation))",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 4717.0, 347.0, 194.0 ],
					"text" : "Interpolation allows us to shape events in type by gradually moving from one distribution towards the other.\n\nSay you have two distributions A and B :\n    A describes onset patterns of dub step drums.\n    B describes onset patterns of country funk music.\n\nInterpolation allows you to smoothly go from one style to the other, with the possibility of creating a hybrid\nstyle at half-way!. Isn't this amazing ?!?\n\nInterpolation between a pair of distribution can be achieved by simple multiplying each distribution by some weight, where the sum of weights is equal to 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-285",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 282.5, 3905.0, 317.0, 47.0 ],
					"text" : "Unlike itable, multislider does not allow us to sample from its distribution. This is why we have an itable here instead of a multislider."
				}

			}
, 			{
				"box" : 				{
					"hint" : "x 9 y 77",
					"id" : "obj-282",
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 64.0, 4517.0, 160.0, 145.0 ],
					"range" : 101,
					"size" : 10,
					"table_data" : [ 0, 64, 53, 23, 38, 51, 70, 76, 80, 81, 0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-283",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 64.0, 4482.0, 58.0, 20.0 ],
					"text" : "listfunnel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-284",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 64.0, 4452.0, 168.0, 20.0 ],
					"text" : "o.route /distribution/combined"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-281",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 64.0, 4405.0, 783.0, 32.0 ],
					"text" : "/distribution/combined = div(abs(/distribution - (/distribution/max_frequency * /inversion)), /compression)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-280",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 94.0, 4375.0, 317.0, 20.0 ],
					"text" : "Finally, we can combine both compression and inversion!!"
				}

			}
, 			{
				"box" : 				{
					"hint" : "x 9 y 83",
					"id" : "obj-277",
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 94.0, 4201.0, 160.0, 145.0 ],
					"range" : 101,
					"size" : 10,
					"table_data" : [ 0, 64, 53, 23, 38, 51, 70, 76, 80, 81, 0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-278",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 94.0, 4166.0, 58.0, 20.0 ],
					"text" : "listfunnel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-279",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 94.0, 4136.0, 159.0, 20.0 ],
					"text" : "o.route /distribution/inverted"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-276",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 298.0, 3677.0, 32.5, 20.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-274",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 298.0, 3654.0, 59.0, 20.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-275",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 298.0, 3634.0, 59.0, 20.0 ],
					"text" : "Inversion"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-271",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 64.0, 3514.0, 75.0, 18.0 ],
					"text" : "range 0 100"
				}

			}
, 			{
				"box" : 				{
					"hint" : "x 9 y 73",
					"id" : "obj-236",
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 122.5, 3857.0, 160.0, 145.0 ],
					"range" : 101,
					"size" : 10,
					"table_data" : [ 0, 64, 53, 23, 38, 51, 70, 76, 80, 81, 0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-237",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 122.5, 3822.0, 58.0, 20.0 ],
					"text" : "listfunnel"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-263",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 64.0, 4088.0, 646.0, 32.0 ],
					"text" : "/distribution/inverted = abs(/distribution - (/distribution/max_frequency * /inversion))",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-262",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 4022.0, 550.0, 60.0 ],
					"text" : "To invert the distribution, we compute the absolute value of the frequency of every item subtracted by the maximum range of the distribution weighted by a scaling factor\n\nf(item_compressed) = | f(item) - max(frequency) * compression_factor | "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-252",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 122.5, 3792.0, 181.0, 20.0 ],
					"text" : "o.route /distribution/compressed"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-251",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 64.0, 3737.0, 574.0, 32.0 ],
					"text" : "/histogram/compressed = div(/histogram, /compression)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-250",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 64.0, 3709.5, 413.0, 20.0 ],
					"text" : "o.pack /distribution /compression /inversion /distribution/max_frequency 100"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-249",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 247.0, 3255.0, 49.0, 21.0 ],
					"text" : "Listen!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-248",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 3423.0, 495.0, 74.0 ],
					"text" : "Some other usefull manipulations are compression and inversion.\nCompression diminishes or expands the distances between frequencies, thus allowing use to interpolate between interpolate between distributions.\n\nTo compress or expand a distribution, we divide each frequency by a compression factor."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-247",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 3298.0, 523.0, 60.0 ],
					"text" : "As you can hear, this piece sounds \"out of tune\" and it seems that this piece uses more than just 12 notes. Using the semitone as the bin size, we loose a lot of definition about the distribution of pitch in this piece. A more suitable approach would be to choose quarther or eight-tones, or event the intervals between the notes."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-243",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 3144.0, 148.0, 21.0 ],
					"text" : "Histogram manipulation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-242",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 3195.0, 523.0, 47.0 ],
					"text" : "There are many operations we can perform on a histogram. Let's talk about the choice of bin\nsize first. Let's say we are trying to analyze the pitch distribution of the following piece of music using the previous method.."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-234",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 174.25, 3677.0, 32.5, 20.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-238",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 134.5, 3634.0, 112.0, 20.0 ],
					"text" : "compression factor"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-239",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 174.25, 3654.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"border_left" : 0,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candycane" : 12,
					"ghostbar" : 30,
					"id" : "obj-241",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 64.0, 3543.0, 232.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"settype" : 0,
					"size" : 10,
					"spacing" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 24.0,
					"frgb" : 0.0,
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 310.0, 4929.0, 276.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 113.0, 149.0, 219.0, 62.0 ],
					"text" : "MIXTURE DISTRIBUTION"
				}

			}
, 			{
				"box" : 				{
					"border_left" : 0,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candycane" : 12,
					"ghostbar" : 30,
					"id" : "obj-224",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 571.0, 4980.0, 232.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"settype" : 0,
					"size" : 10,
					"spacing" : 1
				}

			}
, 			{
				"box" : 				{
					"border_left" : 0,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candycane" : 12,
					"ghostbar" : 30,
					"id" : "obj-231",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 64.0, 4980.0, 232.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"settype" : 0,
					"size" : 10,
					"spacing" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-201",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1017.0, 2853.5, 37.0, 18.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-191",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 982.0, 2853.5, 35.0, 18.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"hint" : "x 9 y 0",
					"id" : "obj-190",
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 982.0, 2954.5, 160.0, 145.0 ],
					"range" : 100,
					"size" : 12,
					"table_data" : [ 0, 46, 7, 82, 0, 45, 6, 42, 81, 0, 65, 0, 51 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-188",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 79.0, 2533.0, 178.0, 20.0 ],
					"text" : "Pair sets value at (index, value)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-187",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 2553.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-185",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 79.0, 2553.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 79.0, 2582.0, 90.0, 20.0 ],
					"text" : "pak 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-178",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 235.0, 2591.5, 35.0, 18.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-180",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 235.0, 2553.5, 37.0, 18.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-182",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 235.0, 2630.5, 99.0, 19.0 ],
					"text" : "write histogram"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-177",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 2447.0, 357.0, 47.0 ],
					"text" : "Bang outputs a random value according to it's probability, where \nthe probability of an item is equal to its frequency of item divided by the total sum of events"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-174",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 49.0, 2813.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 49.0, 2447.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-170",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 2413.0, 146.0, 20.0 ],
					"text" : "Graphic display of a table"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-169",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 561.0, 2632.5, 105.0, 20.0 ],
					"text" : "time to next event"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-164",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 910.0, 2632.5, 160.0, 47.0 ],
					"text" : "We'll use detonate to read the midi files and play them as fast as possible!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-162",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 175.0, 2266.5, 40.0, 20.0 ],
					"text" : "count"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-161",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 110.0, 2266.5, 51.0, 20.0 ],
					"text" : "number"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-159",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 110.0, 2239.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-157",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 175.0, 2239.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-155",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.0, 2163.0, 32.5, 18.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-153",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.0, 2139.0, 32.5, 18.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"hint" : "x 2 y 97",
					"id" : "obj-151",
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 49.0, 2631.5, 160.0, 145.0 ],
					"range" : 100,
					"size" : 3,
					"table_data" : [ 0, 10, 32, 62 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-150",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 2391.5, 42.0, 21.0 ],
					"text" : "itable"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-149",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 2139.0, 84.0, 18.0 ],
					"text" : "1, 1, 1, 1, 2, 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-147",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 727.0, 1874.0, 372.0, 33.0 ],
					"text" : "Watch out! The interpolation between the pitch classes do not exist.\nThe x-axis has only 12 values!"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-145",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 779.5, 1654.0, 267.0, 21.0 ],
					"text" : "Krumhansl's C major and C Minor key profile"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"id" : "obj-144",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 1697.0, 376.0, 146.0 ],
					"pic" : "Macintosh HD:/Users/rafaelvalle/Desktop/krumhansl-keyprofile.png"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"id" : "obj-143",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 578.0, 1689.0, 521.0, 174.0 ],
					"pic" : "Macintosh HD:/Users/rafaelvalle/Desktop/krumhansl-cmajor.gif"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-142",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 548.0, 2447.0, 526.0, 100.0 ],
					"text" : "Complete the patch below to compute the distributions of a Bach's piece in F major and G major.\n\nDoes the distribution looks like what we discussed last week?\nWhat's different?\nDo you see any patterns on each distribution?\nDo you see any patterns between distributions?\nDo these distribution represent the pitch class distribution of all pieces in F major and G major?"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-141",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 548.0, 2426.0, 42.0, 21.0 ],
					"text" : "Try it!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-129",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 801.0, 2596.5, 33.0, 18.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 836.0, 2853.5, 35.0, 18.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-131",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 791.0, 2853.5, 37.0, 18.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"hint" : "x 2 y 231",
					"id" : "obj-59",
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 791.0, 2954.5, 160.0, 145.0 ],
					"range" : 350,
					"size" : 12,
					"table_data" : [ 0, 209, 62, 308, 9, 228, 28, 171, 294, 21, 272, 5, 250 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-132",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 708.0, 2853.5, 35.0, 18.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 664.0, 2853.5, 37.0, 18.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 806.0, 2876.5, 97.0, 19.0 ],
					"text" : "write dist_gmaj"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-133",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 664.0, 2876.5, 94.0, 19.0 ],
					"text" : "write dist_fmaj"
				}

			}
, 			{
				"box" : 				{
					"hint" : "x 2 y 201",
					"id" : "obj-134",
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 618.0, 2954.5, 160.0, 145.0 ],
					"range" : 500,
					"size" : 12,
					"table_data" : [ 0, 448, 32, 383, 65, 334, 415, 43, 457, 13, 441, 255, 108 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 722.0, 2756.5, 107.0, 20.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 722.0, 2732.5, 63.0, 20.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-135",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 722.0, 2665.5, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-136",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 592.0, 2665.5, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 561.0, 2665.5, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 561.0, 2693.5, 50.0, 20.0 ],
					"text" : "del 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 776.0, 2665.5, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 722.0, 2700.5, 200.714294, 20.0 ],
					"text" : "pack 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-139",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 828.0, 2665.5, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-140",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 749.0, 2596.5, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 124.0, 34.0, 18.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 658.5, 2596.5, 33.0, 18.0 ],
					"text" : "next"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 2596.5, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.0, 124.0, 35.0, 18.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int" ],
					"patching_rect" : [ 695.0, 2632.5, 208.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 68.0, 143.0, 100.0, 20.0 ],
					"save" : [ "#N", "detonate", "u836001755", ";", "#X", "setparam", 0, "Time", 0, 0, 999999, 0, 1000, 200, 0, ";", "#X", "setparam", 1, "Pitch", 0, 0, 127, 60, 12, 4, 0, ";", "#X", "setparam", 2, "Vel", 0, 0, 127, 64, 12, 4, 0, ";", "#X", "setparam", 3, "Dur", 0, 1, 99999, 200, 800, 200, 0, ";", "#X", "setparam", 4, "Chan", 0, 1, 16, 1, 8, 1, 0, ";", "#X", "setparam", 5, "Track", 0, 1, 32, 1, 8, 1, 0, ";", "#X", "setparam", 6, "X1", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "setparam", 7, "X2", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "restore", ";", "#X", 0, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 750, 71, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 67, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 74, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 76, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 67, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 67, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 2000, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 64, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 125, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 66, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 67, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 66, 96, 1125, 2, 3, 0, 0, ";", "#X", 125, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 71, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 59, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 47, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 67, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 67, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 1000, 5, 6, 0, 0, ";", "#X", 250, 64, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 125, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 64, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 66, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 64, 96, 1125, 2, 3, 0, 0, ";", "#X", 375, 73, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 74, 96, 62, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 2000, 5, 6, 0, 0, ";", "#X", 62, 73, 96, 63, 1, 2, 0, 0, ";", "#X", 63, 74, 96, 62, 1, 2, 0, 0, ";", "#X", 62, 73, 96, 563, 1, 2, 0, 0, ";", "#X", 313, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 73, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 74, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 54, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 54, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 187, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 187, 69, 96, 188, 1, 2, 0, 0, ";", "#X", 188, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 69, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 69, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 60, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 67, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 250, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 250, 59, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 60, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 59, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 60, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 74, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 62, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 78, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 79, 96, 62, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 62, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 62, 78, 96, 63, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 79, 96, 62, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 78, 96, 1313, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 313, 3, 4, 0, 0, ";", "#X", 313, 59, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 60, 96, 500, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 500, 3, 4, 0, 0, ";", "#X", 250, 78, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 79, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 78, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 73, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 78, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 74, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 79, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 78, 96, 187, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 187, 76, 96, 188, 1, 2, 0, 0, ";", "#X", 188, 78, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 61, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 62, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 62, 61, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 62, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 61, 96, 563, 3, 4, 0, 0, ";", "#X", 313, 78, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 61, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 1500, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 42, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 36, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 24, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 250, 62, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 76, 96, 187, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 0, 38, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 2000, 5, 6, 0, 0, ";", "#X", 125, 57, 96, 125, 3, 4, 0, 0, ";", "#X", 62, 74, 96, 188, 1, 2, 0, 0, ";", "#X", 63, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 76, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 1125, 3, 4, 0, 0, ";", "#X", 125, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 55, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 57, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 71, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 4000, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 66, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 250, 67, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 64, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 74, 96, 2000, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 64, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 125, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 66, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 67, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 66, 96, 1125, 2, 3, 0, 0, ";", "#X", 125, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 71, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 59, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 47, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 67, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 67, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 1000, 5, 6, 0, 0, ";", "#X", 250, 64, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 1000, 2, 3, 0, 0, ";", "#X", 250, 73, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 74, 96, 62, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 2000, 5, 6, 0, 0, ";", "#X", 62, 73, 96, 63, 1, 2, 0, 0, ";", "#X", 63, 74, 96, 62, 1, 2, 0, 0, ";", "#X", 62, 73, 96, 563, 1, 2, 0, 0, ";", "#X", 313, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 73, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 74, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 54, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 54, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 69, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 69, 96, 1125, 1, 2, 0, 0, ";", "#X", 125, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 69, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 60, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 67, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 250, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 250, 59, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 60, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 59, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 60, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 74, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 62, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 78, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 79, 96, 62, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 62, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 62, 78, 96, 63, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 79, 96, 62, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 78, 96, 1313, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 313, 3, 4, 0, 0, ";", "#X", 313, 59, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 60, 96, 500, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 500, 3, 4, 0, 0, ";", "#X", 250, 78, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 79, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 78, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 73, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 78, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 74, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 79, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 78, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 76, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 78, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 76, 96, 1125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 61, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 62, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 62, 61, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 62, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 61, 96, 563, 3, 4, 0, 0, ";", "#X", 313, 78, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 61, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 1500, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 42, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 59, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1500, 2, 3, 0, 0, ";", "#X", 500, 64, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 36, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 24, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 66, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 64, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 67, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 0, 38, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 2000, 5, 6, 0, 0, ";", "#X", 125, 66, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 67, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 66, 96, 1125, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 1125, 3, 4, 0, 0, ";", "#X", 625, 60, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 64, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 55, 96, 500, 3, 4, 0, 0, ";", "#X", 250, 66, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 67, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 40, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 65, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 64, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 61, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 65, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 38, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 69, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 64, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 42, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 2, 3, 0, 0, ";", "#X", 125, 64, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 62, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 64, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 62, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 44, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 32, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 60, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 60, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 45, 96, 1500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1500, 5, 6, 0, 0, ";", "#X", 500, 52, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 57, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 59, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 43, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 42, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 55, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 250, 73, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 74, 96, 187, 1, 2, 0, 0, ";", "#X", 0, 40, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 2000, 5, 6, 0, 0, ";", "#X", 187, 73, 96, 188, 1, 2, 0, 0, ";", "#X", 188, 74, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 73, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 73, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 74, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 38, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 68, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 69, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 69, 96, 1125, 1, 2, 0, 0, ";", "#X", 125, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 69, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 67, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 64, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 48, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 62, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 47, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 64, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 60, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 71, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 72, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 74, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 250, 76, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 55, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 7000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 7000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 74, 96, 2000, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1000, 3, 4, 0, 0, ";", "#X", 1000, 64, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 62, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 64, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 57, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 57, 96, 1625, 3, 4, 0, 0, ";", "#X", 125, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 750, 3, 4, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 250, 60, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 76, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 187, 3, 4, 0, 0, ";", "#X", 0, 36, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 24, 96, 1000, 5, 6, 0, 0, ";", "#X", 187, 57, 96, 188, 3, 4, 0, 0, ";", "#X", 188, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 69, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 38, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 55, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 250, 3, 4, 0, 0, ";", "#X", 125, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 73, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 74, 96, 187, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 2000, 5, 6, 0, 0, ";", "#X", 187, 73, 96, 188, 1, 2, 0, 0, ";", "#X", 188, 74, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 73, 96, 1000, 1, 2, 0, 0, ";", "#X", 1000, 71, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 73, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 74, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 38, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 71, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 68, 96, 1000, 2, 3, 0, 0, ";", "#X", 1000, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 250, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 49, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 37, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 69, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 69, 96, 1125, 1, 2, 0, 0, ";", "#X", 125, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 51, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 39, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 69, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 67, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 55, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 2000, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 61, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 71, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 67, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 66, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 49, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 37, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 64, 96, 250, 3, 4, 0, 0, ";", "#X", 0, 49, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 37, 96, 1000, 5, 6, 0, 0, ";", "#X", 250, 62, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 64, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 59, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 61, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 62, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 125, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 61, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 62, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 61, 96, 1125, 3, 4, 0, 0, ";", "#X", 125, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 61, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 49, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 37, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 81, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 83, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 81, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 54, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 79, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 61, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 78, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 79, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 72, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 81, 96, 2000, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 60, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 79, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 78, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 79, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 64, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 49, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 37, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 81, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 78, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1500, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 78, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 60, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 80, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 500, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 59, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 81, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 500, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 78, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 187, 3, 4, 0, 0, ";", "#X", 187, 62, 96, 188, 3, 4, 0, 0, ";", "#X", 188, 60, 96, 187, 3, 4, 0, 0, ";", "#X", 125, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 62, 62, 96, 188, 3, 4, 0, 0, ";", "#X", 188, 60, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 79, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 76, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 1500, 3, 4, 0, 0, ";", "#X", 500, 78, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 75, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 79, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 76, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 4000, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 52, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 81, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 79, 96, 187, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 47, 96, 1000, 5, 6, 0, 0, ";", "#X", 187, 78, 96, 188, 1, 2, 0, 0, ";", "#X", 188, 79, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 78, 96, 1000, 1, 2, 0, 0, ";", "#X", 500, 75, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 78, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 76, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 40, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 1000, 5, 6, 0, 0, ";", "#X", 250, 71, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 68, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 42, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 500, 71, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 44, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 32, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 73, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 71, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 73, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 45, 96, 1500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1500, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 1500, 2, 3, 0, 0, ";", "#X", 500, 75, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 43, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 75, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 42, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 72, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 250, 79, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 78, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 76, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 81, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 72, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 42, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 2000, 5, 6, 0, 0, ";", "#X", 500, 78, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 75, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 750, 2, 3, 0, 0, ";", "#X", 750, 72, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 69, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 68, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 40, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 52, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 77, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 47, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 44, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 32, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 40, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 77, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 74, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 73, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 45, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 52, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 2000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 49, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 37, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 48, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 68, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 500, 1, 2, 0, 0, ";", "#X", 250, 69, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 66, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 64, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 73, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 65, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 58, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 46, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 64, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 49, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 37, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 57, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1500, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 65, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 65, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 250, 59, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 77, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 125, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 60, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 59, 96, 1125, 3, 4, 0, 0, ";", "#X", 125, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 68, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 57, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 77, 96, 125, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 250, 3, 4, 0, 0, ";", "#X", 125, 74, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 72, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 4000, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 1500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1500, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 2000, 1, 2, 0, 0, ";", "#X", 0, 65, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 49, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 37, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 68, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 125, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 68, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 69, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 68, 96, 1125, 2, 3, 0, 0, ";", "#X", 125, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 68, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 72, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 59, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 47, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 60, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 48, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 69, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 67, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 47, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 69, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 250, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 1000, 5, 6, 0, 0, ";", "#X", 250, 66, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 72, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 250, 74, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 76, 96, 93, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 47, 96, 2000, 5, 6, 0, 0, ";", "#X", 93, 74, 96, 94, 1, 2, 0, 0, ";", "#X", 94, 76, 96, 63, 1, 2, 0, 0, ";", "#X", 63, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 250, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 74, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 76, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 68, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 56, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 44, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 1750, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 45, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 53, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 41, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 52, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 74, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 72, 96, 187, 1, 2, 0, 0, ";", "#X", 0, 50, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 500, 5, 6, 0, 0, ";", "#X", 187, 71, 96, 188, 1, 2, 0, 0, ";", "#X", 188, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 68, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 250, 1, 2, 0, 0, ";", "#X", 0, 40, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 500, 5, 6, 0, 0, ";", "#X", 250, 71, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 69, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 500, 72, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 40, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 78, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 79, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 81, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 42, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 72, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 69, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 74, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 36, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 24, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 500, 74, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 38, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 76, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1500, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 41, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 29, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 40, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 73, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 58, 96, 500, 3, 4, 0, 0, ";", "#X", 500, 74, 96, 2500, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 500, 3, 4, 0, 0, ";", "#X", 0, 41, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 29, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 55, 96, 500, 3, 4, 0, 0, ";", "#X", 0, 40, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 53, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 38, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 1000, 5, 6, 0, 0, ";", "#X", 750, 55, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 70, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 53, 96, 125, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 1000, 5, 6, 0, 0, ";", "#X", 125, 52, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 53, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 52, 96, 1125, 3, 4, 0, 0, ";", "#X", 125, 76, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 73, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 750, 2, 3, 0, 0, ";", "#X", 0, 45, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 50, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 70, 96, 125, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 250, 3, 4, 0, 0, ";", "#X", 125, 67, 96, 125, 2, 3, 0, 0, ";", "#X", 125, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 2000, 3, 4, 0, 0, ";", "#X", 0, 38, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 26, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 71, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 72, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 74, 96, 93, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 93, 72, 96, 94, 1, 2, 0, 0, ";", "#X", 94, 74, 96, 63, 1, 2, 0, 0, ";", "#X", 63, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 71, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 74, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 47, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 2000, 5, 6, 0, 0, ";", "#X", 1000, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 1500, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 67, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 43, 96, 9500, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 9500, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 74, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 76, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 74, 96, 2000, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 1000, 3, 4, 0, 0, ";", "#X", 500, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 750, 3, 4, 0, 0, ";", "#X", 500, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 60, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 60, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 62, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 60, 96, 1125, 3, 4, 0, 0, ";", "#X", 125, 71, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 72, 96, 250, 1, 2, 0, 0, ";", "#X", 250, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 66, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 60, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 67, 96, 3000, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 1500, 3, 4, 0, 0, ";", "#X", 500, 45, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 47, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 60, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 500, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 33, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1000, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 42, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 30, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 750, 3, 4, 0, 0, ";", "#X", 0, 40, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 2000, 5, 6, 0, 0, ";", "#X", 500, 67, 96, 500, 1, 2, 0, 0, ";", "#X", 250, 62, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 59, 96, 125, 3, 4, 0, 0, ";", "#X", 125, 66, 96, 3000, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 57, 96, 63, 3, 4, 0, 0, ";", "#X", 63, 59, 96, 62, 3, 4, 0, 0, ";", "#X", 62, 57, 96, 1313, 3, 4, 0, 0, ";", "#X", 313, 59, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 60, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 39, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 27, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 57, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 59, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 16500, 3, 4, 0, 0, ";", "#X", 0, 40, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 28, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 47, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 64, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 66, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 67, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 1500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1500, 5, 6, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 65, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 77, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 2000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 500, 76, 96, 1500, 1, 2, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 72, 96, 1000, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 47, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 76, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 78, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 500, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 500, 5, 6, 0, 0, ";", "#X", 500, 79, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 47, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 35, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 65, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 76, 96, 1000, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 36, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 74, 96, 750, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 36, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 24, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 66, 96, 500, 2, 3, 0, 0, ";", "#X", 250, 76, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 72, 96, 125, 1, 2, 0, 0, ";", "#X", 125, 71, 96, 1500, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 0, 43, 96, 9000, 4, 5, 0, 0, ";", "#X", 0, 31, 96, 9000, 5, 6, 0, 0, ";", "#X", 500, 62, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 67, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 500, 2, 3, 0, 0, ";", "#X", 500, 74, 96, 2000, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 1500, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 38, 96, 1000, 5, 6, 0, 0, ";", "#X", 1000, 52, 96, 1000, 4, 5, 0, 0, ";", "#X", 0, 40, 96, 1000, 5, 6, 0, 0, ";", "#X", 500, 69, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 67, 96, 250, 2, 3, 0, 0, ";", "#X", 250, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 69, 96, 2000, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 2000, 4, 5, 0, 0, ";", "#X", 0, 42, 96, 2000, 5, 6, 0, 0, ";", "#X", 500, 71, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 54, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 52, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 72, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 50, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 48, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 74, 96, 500, 1, 2, 0, 0, ";", "#X", 0, 47, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 45, 96, 250, 3, 4, 0, 0, ";", "#X", 250, 71, 96, 3000, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 3000, 2, 3, 0, 0, ";", "#X", 0, 43, 96, 3000, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 3000, 4, 5, 0, 0, ";", "#X", 0, 43, 96, 3000, 5, 6, 0, 0, ";", "#X", "stop", ";" ],
					"text" : "detonate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-125",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 2063.0, 260.0, 20.0 ],
					"text" : "histo creates a histogram of numbers received."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 2042.0, 39.0, 21.0 ],
					"text" : "histo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-121",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 682.0, 3081.0, 150.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 110.0, 2201.0, 84.0, 20.0 ],
					"text" : "histo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-118",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.5, 1935.0, 509.0, 60.0 ],
					"text" : "Now, let's get back to our previous class discussion on estimating the key of a piece of music by counting. We're going to use frequentist inference, which draws conclusions from sample data by emphasizing the frequency of the data. Before we engage with inference, let's look at two objects : histo and itable."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-117",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 272.0, 1278.0, 233.0, 20.0 ],
					"text" : "arguments are distribution and parameter"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-116",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 272.0, 1246.0, 233.0, 20.0 ],
					"text" : "bang draws a sample from the distribution"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 286.0, 1509.0, 16.0, 17.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 418.0, 1509.0, 19.0, 17.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.313726, 0.356863, 0.596078, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"compatibility" : 1,
					"contdata" : 1,
					"id" : "obj-89",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 148.0, 1321.0, 288.0, 185.0 ],
					"peakcolor" : [ 0.933333, 0.827451, 0.988235, 1.0 ],
					"setminmax" : [ -10.0, 10.0 ],
					"setstyle" : 2,
					"slidercolor" : [ 0.003922, 0.945098, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 147.0, 1509.0, 23.0, 17.0 ],
					"text" : "-10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 244.5, 1246.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 148.0, 1246.0, 58.0, 20.0 ],
					"text" : "metro 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 148.0, 1209.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.0, 1278.0, 118.0, 20.0 ],
					"text" : "randdist gaussian 5."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 1170.5, 516.0, 20.0 ],
					"text" : "CNMAT's randdist is a powerful random number generator with over 30 statistical distributions."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 1146.5, 52.0, 21.0 ],
					"text" : "randdit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 786.0, 952.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 839.0, 1083.0, 37.0, 18.0 ],
					"text" : "coda"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 1083.0, 47.0, 18.0 ],
					"text" : "chorus"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 786.0, 989.0, 51.5, 20.0 ],
					"text" : "urn"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 726.0, 1083.0, 40.0, 18.0 ],
					"text" : "verse"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-57",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 624.0, 830.0, 402.0, 114.0 ],
					"text" : "Use urn to help you cue musical sections of a pop song.\n\nThe distribution is as follows:\n    Verse should appear 2 times\n    Chorus should appear 3 times\n    Coda should appear 1 time\n\nOrder does not matter!"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 624.0, 809.0, 42.0, 21.0 ],
					"text" : "Try it!"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpargs.js",
					"id" : "obj-55",
					"ignoreclick" : 1,
					"jsarguments" : [ "urn" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 181.0, 942.0, 147.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpargs.js",
					"id" : "obj-4",
					"ignoreclick" : 1,
					"jsarguments" : [ "drunk" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 129.5, 473.5, 213.0, 65.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-54",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 815.5, 262.0, 60.0 ],
					"text" : "Urn creates a bag of number from which the user can sample without replacement. In other words, you sample from the urn and do not put the item back in the urn."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 791.5, 30.0, 21.0 ],
					"text" : "urn"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-51",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 129.5, 428.5, 155.0, 47.0 ],
					"text" : "Start at half the range size and take steps +/- from there at stepsize"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 508.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 68.0, 442.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-454",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 624.0, 389.0, 350.0, 33.0 ],
					"text" : "Complete this patch to make the circle perform a drunken walk!\nRemember you need two coordinates (x,y)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-453",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 624.0, 368.0, 42.0, 21.0 ],
					"text" : "Try it!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "pictslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 705.0, 647.0, 100.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 705.0, 441.0, 45.0, 20.0 ],
					"text" : "Status"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 749.0, 441.0, 60.0, 20.0 ],
					"text" : "Step rate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-71",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 749.0, 461.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 705.0, 461.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 389.0, 283.0, 20.0 ],
					"text" : "Drunk outputs random numbers within a step range"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 154.0, 1001.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-179",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.0, 1001.0, 80.0, 20.0 ],
					"text" : "Urn is empty"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 94.0, 905.5, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 94.0, 942.0, 79.0, 21.0 ],
					"text" : "urn 10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-166",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 131.0, 905.5, 42.0, 19.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-168",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 94.0, 1001.0, 53.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 68.0, 473.5, 61.0, 20.0 ],
					"text" : "drunk 6 5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 366.0, 44.0, 21.0 ],
					"text" : "drunk"
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
					"patching_rect" : [ 18.0, 330.0, 176.0, 21.0 ],
					"text" : "Random Number Generators"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-2",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 1625.0, 502.0, 60.0 ],
					"text" : "A histogram is a graphical representation of the distribution of data.\nHistograms provide the frequency of events, where an event can be a class, a number of a range. Each column reprents an event and the height of each column represents its frequency. The higher the column, the more frequent the event is."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-193",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 1604.0, 76.0, 21.0 ],
					"text" : "Histograms"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-50",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 107.0, 528.0, 192.0 ],
					"text" : "Last class we learned about composition with statistical models and used some of this knowledge to build a naive improvisation agent that improvises melodies under specifications. \n\nToday, we're going to learn about histograms and frequentist inference. We're going to learn how to estimate the distributions of parameters (pitch, rhythm) of pieces of music. Usefull manipulations of histogram such as compression, inversion, and interpolation between histograms will be presented.\n\nLast, we're going to build a soothing 4-voice choral improviser for your friend that insists in asking you favors , and hopefully start looking at a drum agent!\n\nFirst, let's briefly look at some other random number generators in Max.",
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
					"text" : "Week 10 // Composing with Statistical Models  / Part 2"
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
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 705.0, 602.0, 115.0, 20.0 ],
					"text" : "pack 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 705.0, 501.0, 115.0, 20.0 ],
					"text" : "metro 125"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 570.5, 2722.5, 550.75, 2722.5, 550.75, 2586.5, 668.0, 2586.5 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-165", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 73.5, 5287.0, 309.25, 5287.0, 309.25, 4970.0, 329.0, 4970.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-234", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-234", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-252", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-279", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-281", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-276", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-274", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-276", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-276", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-277", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-278", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-279", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-281", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-283", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-97", 0 ]
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
				"name" : "krumhansl-cmajor.gif",
				"bootpath" : "/Users/rafaelvalle/Desktop",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Desktop",
				"type" : "GIFf",
				"implicit" : 1
			}
, 			{
				"name" : "krumhansl-keyprofile.png",
				"bootpath" : "/Users/rafaelvalle/Desktop",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Desktop",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "wedding.maxpat",
				"bootpath" : "/Volumes/liferaid/DESKTOP/Coding/CNMAT-Pedagogy/Music-158-Fall2014/week10_composing_with_statistical_models",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "prob-table.maxpat",
				"bootpath" : "/Volumes/liferaid/Eletronica/MAX/rafaelvalle",
				"patcherrelativepath" : "../../../../../Eletronica/MAX/rafaelvalle",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "wedding.json",
				"bootpath" : "/Volumes/liferaid/DESKTOP/Coding/CNMAT-Pedagogy/Music-158-Fall2014/week10_composing_with_statistical_models",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pattrstorage-ui.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/interface",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/interface",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "readwrite-ui.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/interface",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/interface",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "badge.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "uc_license.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cnmat_blue.gif",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"type" : "GIFf",
				"implicit" : 1
			}
, 			{
				"name" : "ali.remove-char.js",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/data_transformation",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/data_transformation",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "Internal_Synth.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pstore-simple-storage.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/data_storage/pstore-simple-storage",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/data_storage/pstore-simple-storage",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "clavecin.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "letter.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/interface",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/interface",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "inst-to-pgm.txt",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "nothing.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/basic_programming",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/basic_programming",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "manage_notes.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cc-to-cc.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "banner.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cnmat_wht-trans.png",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/patchers/depot_support",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "make-tune.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "durations.mxt",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/repertoire/Michael_Zbyszynski/Daguerreotype",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/repertoire/Michael_Zbyszynski/Daguerreotype",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "notes-to-coll.maxpat",
				"bootpath" : "/Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"patcherrelativepath" : "../../../../../../../Users/rafaelvalle/Documents/Max/Packages/CNMAT-MMJ-Depot-3.1.0/examples/applications/internal_synth/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "randdist.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "OSC-route.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
