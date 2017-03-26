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
		"rect" : [ -359.0, -1058.0, 1886.0, 1012.0 ],
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
					"id" : "obj-152",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 101.0, 2729.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-150",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 198.0, 2637.0, 175.0, 21.0 ],
					"presentation_rect" : [ 196.0, 2632.0, 0.0, 0.0 ],
					"text" : "store it in the high seven bits",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-149",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 198.0, 2606.0, 274.0, 21.0 ],
					"presentation_rect" : [ 204.0, 2588.0, 0.0, 0.0 ],
					"text" : "bucket allows us to send the previous number",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-148",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 131.0, 2521.0, 245.0, 34.0 ],
					"presentation_rect" : [ 135.0, 2498.0, 245.0, 34.0 ],
					"range" : 60
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 55.0, 296.0, 20.0 ],
									"text" : "Assuming that the state space has three unique items"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-144",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 289.0, 32.5, 20.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 130.0, 214.0, 32.5, 21.0 ],
									"text" : "* 9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 180.0, 46.0, 20.0 ],
									"text" : "bucket"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 71.0, 140.0, 46.0, 20.0 ],
									"text" : "bucket"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-136",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 214.0, 40.0, 21.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-141",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 71.0, 186.0, 32.5, 21.0 ],
									"text" : "* 3"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 636.0, 2600.0, 79.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p third_order"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 152.0, 2606.0, 46.0, 20.0 ],
					"text" : "bucket"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-118",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 131.0, 2566.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-114",
					"linecount" : 22,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.5, 2160.0, 798.0, 325.0 ],
					"presentation_rect" : [ 19.0, 2155.0, 0.0, 0.0 ],
					"text" : "We can use numerical tricks to build markov chains of different order in max.\nLet's say you want to build a second order markov chain and your state space has three unique numbers : [0,1,2]\nWe have 3*3 possible pairs and need to represent/map them to a single number.\n\n    0,0 = 0\n    0,1 = 1\n    0,2 = 2\n    1,0 = 3\n    1,1 = 4\n    1,2 = 5\n    2,0 = 6\n    2,1 = 7\n    2,2 = 8\n\nAlthough we did it by hand, notice that there is a clear structure:\n    To map our pairs to a single number, we :\n       1) multiplied the first item in the pair by the number of items in the state space\n       2) to this number, we added the value of the second item in the pair.\n\nThen, for building a second order markov chain where we have 128 items in our state space, all we have to do is:\n    1) multiply the first item in the pair by 128\n    2) to this number, add the value of the second item in the pair"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 131.0, 2930.0, 112.0, 21.0 ],
					"text" : "makenote 86 200"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 131.0, 2970.0, 55.0, 21.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 386.0, 2665.0, 38.0, 19.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-100",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 131.0, 2879.0, 245.0, 34.0 ],
					"presentation_rect" : [ 30.0, 30.0, 245.0, 34.0 ],
					"range" : 60
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 131.0, 2839.5, 48.0, 21.0 ],
					"text" : "% 128"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-102",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.0, 2760.0, 89.0, 19.0 ],
					"text" : "7742 8000 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-103",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 131.0, 2813.0, 53.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 131.0, 2760.0, 38.0, 21.0 ],
					"save" : [ "#N", "prob", ";" ],
					"text" : "prob"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 150.0, 2792.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 131.0, 2665.0, 40.0, 21.0 ],
					"text" : "+"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 152.0, 2637.0, 41.0, 21.0 ],
					"text" : "* 128"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 131.0, 2708.0, 75.0, 21.0 ],
					"text" : "anal 16384"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-109",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 276.0, 2751.0, 232.0, 36.0 ],
					"text" : "now our anal outputs transitions from two-note pairs to other two-note pairs",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-110",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 184.0, 2839.5, 498.0, 36.0 ],
					"text" : "weed out the \"previous\" note that was stored in the high 7 bits by taking the modulo.\nNotice that 128 is the size of our state space.",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-112",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 259.0, 2930.0, 299.0, 65.0 ],
					"text" : "magic! our playback is comprised of transition probabilities based on the two preceeding notes! This should yield results that sound less random than if we're just looking at one note at a time.",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-96",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.5, 2139.0, 209.0, 21.0 ],
					"presentation_rect" : [ 12.0, 2201.0, 0.0, 0.0 ],
					"text" : "Second order markov chain in max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-95",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 129.0, 1967.0, 37.0, 18.0 ],
					"presentation_rect" : [ 129.0, 1965.0, 0.0, 0.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-94",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 137.0, 1617.0, 37.0, 18.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-92",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.0, 2002.0, 264.0, 32.0 ],
					"presentation_rect" : [ 117.5, 2003.0, 0.0, 0.0 ],
					"text" : "Notice that the dump objects gives a table that is similar to the table we wrote above"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-91",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.5, 1879.0, 78.0, 19.0 ],
					"presentation_rect" : [ 34.0, 1900.0, 0.0, 0.0 ],
					"text" : "State chosen"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 144.0, 1852.0, 74.0, 19.0 ],
					"save" : [ "#N", "prob", ";" ],
					"text" : "prob"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 199.0, 1878.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-82",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 144.0, 1879.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 213.0, 1880.0, 148.0, 19.0 ],
					"text" : "\"I'm stuck\" (or reset) outlet"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 61.5, 2002.0, 41.0, 18.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 1944.0, 132.0, 21.0 ],
					"presentation_rect" : [ 16.5, 1929.0, 0.0, 0.0 ],
					"text" : "Putting it all together"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 1967.0, 111.0, 18.0 ],
					"text" : "0, 1, 0, 1, 0, 1, 1, 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 18.0, 2000.0, 33.0, 20.0 ],
					"text" : "anal"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1182.0, 2125.5, 50.0, 20.0 ],
					"text" : "t b i"
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
					"patching_rect" : [ 1182.0, 2092.5, 105.0, 20.0 ],
					"text" : "time to next event"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-164",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1168.5, 1965.0, 498.0, 74.0 ],
					"text" : "Load the beethoven or coltrane midi file and feed the midi note into your markov model.\nGenerate a melody based on the midi file by sampling from your model\nIs a first order markov chain enough?\nHow would you handle chords?\nHow would you handle note, amplitude and velocity?"
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
					"patching_rect" : [ 1422.0, 2056.5, 33.0, 18.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1343.0, 2214.5, 107.0, 20.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 1343.0, 2190.5, 63.0, 20.0 ],
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
					"patching_rect" : [ 1343.0, 2125.5, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1182.0, 2153.5, 50.0, 20.0 ],
					"text" : "del 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-122",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1397.0, 2125.5, 50.0, 20.0 ]
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
					"patching_rect" : [ 1343.0, 2160.5, 200.714294, 20.0 ],
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
					"patching_rect" : [ 1449.0, 2125.5, 50.0, 20.0 ]
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
					"patching_rect" : [ 1370.0, 2056.5, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 220.0, 199.0, 34.0, 18.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1279.5, 2056.5, 33.0, 18.0 ],
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
					"patching_rect" : [ 1316.0, 2056.5, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 182.0, 199.0, 35.0, 18.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int" ],
					"patching_rect" : [ 1316.0, 2092.5, 208.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 218.0, 100.0, 20.0 ],
					"save" : [ "#N", "detonate", "u836001755", ";", "#X", "setparam", 0, "Time", 0, 0, 999999, 0, 1000, 200, 0, ";", "#X", "setparam", 1, "Pitch", 0, 0, 127, 60, 12, 4, 0, ";", "#X", "setparam", 2, "Vel", 0, 0, 127, 64, 12, 4, 0, ";", "#X", "setparam", 3, "Dur", 0, 1, 99999, 200, 800, 200, 0, ";", "#X", "setparam", 4, "Chan", 0, 1, 16, 1, 8, 1, 0, ";", "#X", "setparam", 5, "Track", 0, 1, 32, 1, 8, 1, 0, ";", "#X", "setparam", 6, "X1", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "setparam", 7, "X2", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "restore", ";", "#X", 2023, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 54, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 67, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 50, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 1012, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 47, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 338, 2, 3, 0, 0, ";", "#X", 338, 71, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 65, 96, 337, 3, 4, 0, 0, ";", "#X", 337, 72, 96, 337, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1012, 2, 3, 0, 0, ";", "#X", 0, 64, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 71, 96, 338, 1, 2, 0, 0, ";", "#X", 338, 69, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 60, 96, 168, 3, 4, 0, 0, ";", "#X", 168, 67, 96, 1349, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1349, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1349, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1349, 4, 5, 0, 0, ";", "#X", 1349, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 675, 4, 5, 0, 0, ";", "#X", 675, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 62, 96, 338, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 64, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 1011, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 57, 96, 674, 3, 4, 0, 0, ";", "#X", 337, 66, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 50, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 62, 96, 169, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 60, 96, 169, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 67, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1012, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 55, 96, 337, 2, 3, 0, 0, ";", "#X", 337, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 675, 4, 5, 0, 0, ";", "#X", 338, 54, 96, 337, 3, 4, 0, 0, ";", "#X", 337, 67, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 674, 4, 5, 0, 0, ";", "#X", 674, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 54, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 50, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 67, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 1011, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 47, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 338, 2, 3, 0, 0, ";", "#X", 338, 71, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 65, 96, 337, 3, 4, 0, 0, ";", "#X", 337, 72, 96, 338, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1012, 2, 3, 0, 0, ";", "#X", 0, 64, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 675, 4, 5, 0, 0, ";", "#X", 338, 71, 96, 337, 1, 2, 0, 0, ";", "#X", 337, 69, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 60, 96, 168, 3, 4, 0, 0, ";", "#X", 168, 67, 96, 1350, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1350, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1350, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1350, 4, 5, 0, 0, ";", "#X", 1350, 69, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 66, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 674, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 62, 96, 338, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 64, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 1012, 2, 3, 0, 0, ";", "#X", 0, 48, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 57, 96, 675, 3, 4, 0, 0, ";", "#X", 337, 66, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 50, 96, 675, 4, 5, 0, 0, ";", "#X", 338, 62, 96, 168, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 168, 3, 4, 0, 0, ";", "#X", 168, 60, 96, 169, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 67, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 1012, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 55, 96, 337, 2, 3, 0, 0, ";", "#X", 337, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 675, 4, 5, 0, 0, ";", "#X", 338, 54, 96, 337, 3, 4, 0, 0, ";", "#X", 337, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 675, 4, 5, 0, 0, ";", "#X", 675, 67, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 674, 4, 5, 0, 0, ";", "#X", 674, 74, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 54, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 60, 96, 338, 3, 4, 0, 0, ";", "#X", 338, 74, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 69, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 54, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 76, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 338, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 675, 4, 5, 0, 0, ";", "#X", 338, 72, 96, 337, 2, 3, 0, 0, ";", "#X", 337, 74, 96, 337, 1, 2, 0, 0, ";", "#X", 0, 71, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 54, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 72, 96, 337, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 337, 2, 3, 0, 0, ";", "#X", 337, 71, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 54, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 73, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 64, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 675, 4, 5, 0, 0, ";", "#X", 675, 74, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 66, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 674, 74, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 54, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 60, 96, 338, 3, 4, 0, 0, ";", "#X", 338, 74, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 60, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 57, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 74, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 338, 3, 4, 0, 0, ";", "#X", 0, 59, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 59, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 76, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 60, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 59, 96, 337, 3, 4, 0, 0, ";", "#X", 337, 74, 96, 338, 1, 2, 0, 0, ";", "#X", 0, 69, 96, 1012, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 338, 3, 4, 0, 0, ";", "#X", 0, 54, 96, 675, 4, 5, 0, 0, ";", "#X", 338, 72, 96, 337, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 337, 3, 4, 0, 0, ";", "#X", 337, 71, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 55, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 67, 96, 675, 2, 3, 0, 0, ";", "#X", 338, 69, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 505, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 337, 2, 3, 0, 0, ";", "#X", 168, 60, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 67, 96, 1349, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1349, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1349, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1349, 4, 5, 0, 0, ";", "#X", 1349, 64, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 47, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 674, 4, 5, 0, 0, ";", "#X", 674, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 338, 2, 3, 0, 0, ";", "#X", 0, 50, 96, 338, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 675, 4, 5, 0, 0, ";", "#X", 338, 59, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 674, 3, 4, 0, 0, ";", "#X", 337, 64, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 49, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 57, 96, 338, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 52, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 62, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 59, 96, 337, 2, 3, 0, 0, ";", "#X", 337, 61, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 54, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 55, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 62, 96, 1349, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 1349, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 1349, 3, 4, 0, 0, ";", "#X", 0, 38, 96, 1349, 4, 5, 0, 0, ";", "#X", 1349, 67, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 52, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 50, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 47, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 64, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 60, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 338, 2, 3, 0, 0, ";", "#X", 338, 71, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 65, 96, 337, 3, 4, 0, 0, ";", "#X", 337, 72, 96, 337, 1, 2, 0, 0, ";", "#X", 0, 67, 96, 1012, 2, 3, 0, 0, ";", "#X", 0, 64, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 675, 4, 5, 0, 0, ";", "#X", 337, 71, 96, 338, 1, 2, 0, 0, ";", "#X", 338, 69, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 337, 2, 3, 0, 0, ";", "#X", 0, 62, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 60, 96, 168, 3, 4, 0, 0, ";", "#X", 168, 67, 96, 1349, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1349, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 1349, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 1349, 4, 5, 0, 0, ";", "#X", 1349, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 338, 3, 4, 0, 0, ";", "#X", 0, 38, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 55, 96, 337, 3, 4, 0, 0, ";", "#X", 0, 40, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 69, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 42, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 43, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 64, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 61, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 43, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 42, 96, 675, 4, 5, 0, 0, ";", "#X", 675, 67, 96, 337, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 59, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 40, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 66, 96, 337, 1, 2, 0, 0, ";", "#X", 337, 64, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 61, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 338, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 675, 4, 5, 0, 0, ";", "#X", 338, 57, 96, 168, 3, 4, 0, 0, ";", "#X", 168, 55, 96, 169, 3, 4, 0, 0, ";", "#X", 169, 62, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 57, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 54, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 674, 65, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 675, 4, 5, 0, 0, ";", "#X", 675, 64, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 48, 96, 1012, 4, 5, 0, 0, ";", "#X", 675, 60, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 55, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 52, 96, 674, 3, 4, 0, 0, ";", "#X", 337, 47, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 64, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 60, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 45, 96, 675, 4, 5, 0, 0, ";", "#X", 675, 66, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 674, 2, 3, 0, 0, ";", "#X", 0, 57, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 48, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 62, 96, 1012, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 47, 96, 338, 4, 5, 0, 0, ";", "#X", 338, 43, 96, 337, 4, 5, 0, 0, ";", "#X", 337, 69, 96, 674, 1, 2, 0, 0, ";", "#X", 0, 54, 96, 674, 3, 4, 0, 0, ";", "#X", 0, 50, 96, 674, 4, 5, 0, 0, ";", "#X", 337, 60, 96, 337, 2, 3, 0, 0, ";", "#X", 337, 67, 96, 675, 1, 2, 0, 0, ";", "#X", 0, 59, 96, 675, 2, 3, 0, 0, ";", "#X", 0, 55, 96, 675, 3, 4, 0, 0, ";", "#X", 0, 43, 96, 675, 4, 5, 0, 0, ";", "#X", "stop", ";" ],
					"text" : "detonate"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1168.5, 1944.0, 42.0, 21.0 ],
					"presentation_rect" : [ 1179.0, 1832.0, 0.0, 0.0 ],
					"text" : "Try it!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-62",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.5, 1752.0, 750.0, 69.0 ],
					"presentation_rect" : [ 14.0, 1739.0, 0.0, 0.0 ],
					"text" : "Given a list of transitions and their frequency counts, prob builds a table of numeric transition. A bang calculates the weighting and outputs a possible transitions.\nNotice that the example above has a dead end and the prob object will get stuck.\nOne common approach to solve such a problem is to set the frequency of all transitions to one when creating the histogram of neighboring pairs. "
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.5, 1731.0, 36.0, 21.0 ],
					"presentation_rect" : [ 12.0, 1716.0, 0.0, 0.0 ],
					"text" : "Prob"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 18.0, 2050.5, 35.0, 20.0 ],
					"save" : [ "#N", "prob", ";" ],
					"text" : "prob"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 1455.0, 124.0, 21.0 ],
					"presentation_rect" : [ 90.0, 1453.0, 0.0, 0.0 ],
					"text" : "MUSICSEED DEMO"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-58",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 1166.0, 723.0, 206.0 ],
					"presentation_rect" : [ 18.0, 1167.0, 0.0, 0.0 ],
					"text" : "Notice that once you have a starting state, you can navigate the transition probabiling by using a random number generator within a range (0,100) and assigning probabilities on that range.\n\nFor example, let's say we have the following transitions for SF:\n\n             sunny    cloudy    foggy\n    sunny     60%      10%       30%\n\nOur random number generator is within the range (0,100). We can use it as follows :\nIf the generated random number is within 0 and 59 : sunny\n                               is within 60 and 69 : cloudy\n                               is within 70 and 100 : foggy\n\nThis was for illustration. In max, can combine two objects that build the transitions probabilities for us given that\nwe provide the frequency of each transition.\nThe weather looks fine today. Let's talk about the use of markov processes in Music!"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-57",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 1145.0, 158.0, 21.0 ],
					"presentation_rect" : [ 18.0, 1145.0, 0.0, 0.0 ],
					"text" : "Navigating the transitions"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-56",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 183.0, 1617.0, 168.0, 69.0 ],
					"presentation_rect" : [ 183.0, 1362.0, 0.0, 0.0 ],
					"text" : "TRANSITIONS\n        0 1 : 3 occurences\n        1 0 : 3 occurences\n        1 1 : 1 occurence\n        0 2 : 1 occurence"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 1617.0, 111.0, 18.0 ],
					"text" : "0, 1, 0, 1, 0, 1, 1, 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-51",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 1547.0, 540.0, 44.0 ],
					"presentation_rect" : [ 18.0, 1307.0, 0.0, 0.0 ],
					"text" : "Given a sequence of numbers, anal makes a histogram of neighboring pairs.\nRemember what we said above : we can build and query the transition probabilities given that we have the frequency of each transition."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 1526.0, 36.0, 21.0 ],
					"presentation_rect" : [ 18.0, 1286.0, 0.0, 0.0 ],
					"text" : "Anal"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 18.0, 1650.0, 33.0, 20.0 ],
					"text" : "anal"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-47",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 1480.0, 485.0, 31.0 ],
					"presentation_rect" : [ 18.0, 1322.0, 0.0, 0.0 ],
					"text" : "In vanilla Max, we can build a markov model by using two objects: anal and prob. We are going to use them to build a markov model step by step."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 1420.0, 726.0, 31.0 ],
					"text" : "We can analyze a melody, a bach choral, etc, as stochastic processes and use, for example, a markov chain to model it.\nLet's check how it sounds like to model a gesualdo choral as a markov process."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 1399.0, 92.0, 21.0 ],
					"text" : "Back to music"
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
					"patching_rect" : [ 18.0, 977.0, 118.0, 21.0 ],
					"text" : "Building the model"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 597.0, 43.0, 21.0 ],
					"text" : "Order"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 755.0, 141.0, 21.0 ],
					"text" : "Transition Probabilities"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-39",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 998.0, 723.0, 119.0 ],
					"text" : "Suppose the state space is X = {sunny, cloudy}. Then X1, X2,Xn represents the weather for a sequence of days.\nLet's assume that the weather tomorrow only depends on the weather yesterday. In this case, the weather is a \nfirst order Markov chain and a typical transition matrix could be:\n             sunny    cloudy\n    sunny     0.9      0.1\n    cloudy    0.7      0.3\n\nFor example, if the weather is sunny today, there is 90% probability that it will be sunny and 10% probability\nthat it will be cloudy."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-38",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 805.0, 723.0, 144.0 ],
					"text" : "The transition probabilities are defined as :\n    TPij = P(Xt = j | Xt-1 = i)\n    In english : pij is equal to the probability that x in the future is going to be \n    sunny or foggy or rainy given that previously it was \n    sunny or foggy or rainy.\n\n    The matrix T whose (i,j) element is TPij is called the transition matrix.\n\nNotice the important properties:\n    (i) TPij ≤ 0 and\n   (ii) ∑iTPij = 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-37",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 618.0, 723.0, 94.0 ],
					"text" : "The Markov chain we just described is a first order Markov chain. That is, the weather tomorrow depends only on today.\nThe order of a Markov chain represents the number of past states required to predict the future. \nIn a second order Markov chain, for example, information about Wt-1 and Wt-2 is required to predict Wt.\nWith a second order Markov chain, we would need information about the weather yesterday and today to predict what it\nis going to be tomorrow)\nAbstracting, for a N order markov chain, P(Wt = w) is conditional on (Wt-N, ..., Wt-1) :\n    P(Wt = W | Wt-n, ..., Wt-1)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-36",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 451.5, 723.0, 119.0 ],
					"text" : "If we can predict tomorrow's weather by knowing what it is today and nothing else, that is :\n    The process {Xt : t in T} is a Markov Chain if:\n\n        P(Wt = w | W0, ..., Wt-1) = P(Wt = S | Wt-1), for all t and for all w in W.\n\n    (Translating to  plain english : [The probability that the weather today is sunny, or foggy, or rainy, given that \n    we know what the weather was like at the beginning of the universe (W0) up to now] is equal to the \n    probability that the weather today is sunny, or foggy, or rainy, given that we know what it was yesterday.\nthat means that the process if a Markov Chain."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 278.0, 102.0, 21.0 ],
					"text" : "Markov Process"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-12",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 121.0, 633.0, 119.0 ],
					"text" : "A stochastic process {Xt : t in T} is a collection of random variables (X) that represent the evolution\nof some system over time (T). \n\nThe variables Xt take values in some set X called the state space. \nIn music, this variables can represent, for example, durations and notes. \nThe state space for MIDI notes is a set with all valid MIDI notes {0,1,...127}\n\nThe set T is called the index set and in our case represents time.\nThis index set can be continuous {0, infinity} or discrete {1,2,3...}."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 776.0, 665.0, 19.0 ],
					"text" : "Speaking of weather, let's try to create a model that predicts what the weather is going to be like tomorrow."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Monaco",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-80",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 299.0, 765.0, 131.0 ],
					"text" : "In probability theory and statistics, a Markov process is a stochastic process that satisfies the Markov property. \nThe Markov Property assumes that the conditional probability distribution of future states depends only on the present state.\nA Markov chain is such a process, for which the distribution of Xt dependes only on Xt-1.\n\nRemember the drunk object? It happens to be a Markov process. \n\nLet's follow the tradition and address a Markov chain's by talking about the weather.\n\nFirst, let's assume that the weather (W) can be represented by three states: Sunny, Foggy, Rainy. \nSuppose the weather today is Sunny, and we want to predict what the weather is going to be like tomorrow."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 95.0, 174.0, 26.0 ],
					"text" : "Stochastic Processes"
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
					"text" : "Week 10 // Composing with Statistical Models  / Part 4"
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
					"destination" : [ "obj-97", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-104", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 140.5, 2743.0, 257.5, 2743.0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1191.5, 2182.5, 1171.75, 2182.5, 1171.75, 2046.5, 1289.0, 2046.5 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-123", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-123", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-123", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-124", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-129", 0 ]
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
					"destination" : [ "obj-64", 0 ],
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
					"destination" : [ "obj-123", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 233.5, 2959.0, 158.5, 2959.0 ],
					"source" : [ "obj-97", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 395.5, 2735.5, 140.5, 2735.5 ],
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 395.5, 2695.5, 140.5, 2695.5 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ]
	}

}
