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
		"rect" : [ 70.0, 69.0, 857.0, 773.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica Neue",
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
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 7,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 495.0, 150.0, 116.0 ],
					"presentation_rect" : [ 131.0, 509.0, 0.0, 0.0 ],
					"text" : "/cows : 2,\n/chickens : 5,\n/turkeys : 3,\n/pigs : 6,\n/rabbits : 8,\n/total/birds : 8,\n/total/mammals : 16",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 405.0, 213.0, 34.0 ],
					"presentation_rect" : [ 442.0, 420.0, 0.0, 0.0 ],
					"text" : "bunnies are well-known for their reproductive prowess..."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 30.0, 405.0, 308.0, 46.0 ],
					"presentation_rect" : [ 136.0, 413.0, 0.0, 0.0 ],
					"text" : "/rabbits = /rabbits * 2,\n/total/mammals = /cows + /pigs + /rabbits",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 240.0, 213.0, 48.0 ],
					"presentation_rect" : [ 286.0, 268.0, 0.0, 0.0 ],
					"text" : "o.display :\nprints the contents of an odot bundle in a human-readable format"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 150.0, 213.0, 62.0 ],
					"presentation_rect" : [ 453.0, 208.0, 0.0, 0.0 ],
					"text" : "o.expr.codebox :\nwrite expressions;\nthese will execute when an odot bundle comes into its inlet"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 60.0, 213.0, 48.0 ],
					"text" : "o.compose :\ncreate an odot bundle by specifying values bound to addresses"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-3",
					"linecount" : 7,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 240.0, 150.0, 116.0 ],
					"text" : "/cows : 2,\n/chickens : 5,\n/turkeys : 3,\n/pigs : 6,\n/rabbits : 4,\n/total/birds : 8,\n/total/mammals : 12",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 30.0, 150.0, 308.0, 46.0 ],
					"text" : "/total/birds = /chickens + /turkeys,\n/total/mammals = /cows + /pigs + /rabbits",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linecount" : 5,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 60.0, 150.0, 78.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 111, 119, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 47, 99, 104, 105, 99, 107, 101, 110, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 20, 47, 116, 117, 114, 107, 101, 121, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 16, 47, 112, 105, 103, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 6, 0, 0, 0, 20, 47, 114, 97, 98, 98, 105, 116, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 4 ],
					"saved_bundle_length" : 128,
					"text" : "/cows : 2,\n/chickens : 5,\n/turkeys : 3,\n/pigs : 6,\n/rabbits : 4",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
