class GUI 
{
		idd = 3000;
		movingenable = 0;

		enableSimulation = 1;
		enableDisplay = 1;
		objects[] = {};

		class ControlsBackground
		{
			class dlgBackground: background
			{
				idc = 2000;
				x = 1 * GUI_GRID_W + GUI_GRID_X;
				y = 1 * GUI_GRID_H + GUI_GRID_Y;
				w = 38 * GUI_GRID_W;
				h = 18 * GUI_GRID_H;
				colorBackground[] = {0,0,0,0.8};
			};


		};

		class Controls {		

			class gui_btn_anfordern_1: RscButton
			{
				idc = 1501;
				text = "Anfordern"; 
				x = 7 * GUI_GRID_W + GUI_GRID_X;
				y = 16 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 2 * GUI_GRID_H;
				colorText[] = {1,1,1,1};
				colorBackground[] = {0,0,0,1};
				tooltip = "Fahrzeug anfordern"; 
				onButtonClick = "disableSerialization; [_this select 0] execVM 'spawn\gui\orderVehicle.sqf';";
			};
			class gui_btn_anfordern_2: RscButton
			{
				idc = 1502;
				text = "Anfordern"; 
				x = 15 * GUI_GRID_W + GUI_GRID_X;
				y = 16 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 2 * GUI_GRID_H;
				colorText[] = {1,1,1,1};
				colorBackground[] = {0,0,0,1};
				tooltip = "Fahrzeug anfordern"; 
				onButtonClick = "disableSerialization; [_this select 0] execVM 'spawn\gui\orderVehicle.sqf';";
			};
			class gui_btn_anfordern_3: RscButton
			{
				idc = 1503;
				text = "Anfordern"; 
				x = 23 * GUI_GRID_W + GUI_GRID_X;
				y = 16 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 2 * GUI_GRID_H;
				colorText[] = {1,1,1,1};
				colorBackground[] = {0,0,0,1};
				tooltip = "Fahrzeug anfordern"; 
				onButtonClick = "disableSerialization; [_this select 0] execVM 'spawn\gui\orderVehicle.sqf';";
			};
			class gui_btn_anfordern_4: RscButton
			{
				idc = 1504;
				text = "Anfordern"; 
				x = 31 * GUI_GRID_W + GUI_GRID_X;
				y = 16 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 2 * GUI_GRID_H;
				colorText[] = {1,1,1,1};
				colorBackground[] = {0,0,0,1};
				tooltip = "Fahrzeug anfordern"; 
				onButtonClick = "disableSerialization; [_this select 0] execVM 'spawn\gui\orderVehicle.sqf';";
			};
			class gui_pic_1: RscPicture
			{
				idc = 1001;
				x = 6 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 8 * GUI_GRID_W;
				h = 7 * GUI_GRID_H;
				text = "spawn\gui\pic\jeep_grunge_small.paa";
			};
			class gui_pic_2: RscPicture
			{
				idc = 1002;
				x = 14 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 8 * GUI_GRID_W;
				h = 7 * GUI_GRID_H;
				text = "spawn\gui\pic\gaz66_grunge_small.paa";
			};
			class gui_pic_3: RscPicture
			{
				idc = 1003;
				x = 22 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 8 * GUI_GRID_W;
				h = 7 * GUI_GRID_H;
				text = "spawn\gui\pic\prp3_grunge_small.paa";
			};
			class gui_pic_4: RscPicture
			{
				idc = 1004;
				x = 30 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 8 * GUI_GRID_W;
				h = 7 * GUI_GRID_H;
				text = "spawn\gui\pic\brm1k_grunge_small.paa";
			};
			class gui_text_namedisplay_1: RscStructuredText
			{
				idc = 1101;
				text = "<t align='center'>lade...</t>"; 
				x = 7 * GUI_GRID_W + GUI_GRID_X;
				y = 10 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_namedisplay_2: RscStructuredText
			{
				idc = 1102;
				text = "<t align='center'>lade ...</t>"; 
				x = 15 * GUI_GRID_W + GUI_GRID_X;
				y = 10 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_namedisplay_3: RscStructuredText
			{
				idc = 1103;
				text = "<t align='center'>lade ...</t>"; 
				x = 23 * GUI_GRID_W + GUI_GRID_X;
				y = 10 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_namedisplay_4: RscStructuredText
			{
				idc = 1104;
				text = "<t align='center'>lade ...</t>"; 
				x = 31 * GUI_GRID_W + GUI_GRID_X;
				y = 10 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_countleft_1: RscStructuredText
			{
				idc = 1201;
				text = "<t align='center'>lade ...</t>"; 
				x = 7 * GUI_GRID_W + GUI_GRID_X;
				y = 12 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_countleft_2: RscStructuredText
			{
				idc = 1202;
				text = "<t align='center'>lade ...</t>"; 
				x = 15 * GUI_GRID_W + GUI_GRID_X;
				y = 12 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_countleft_3: RscStructuredText
			{
				idc = 1203;
				text = "<t align='center'>lade ...</t>"; 
				x = 23 * GUI_GRID_W + GUI_GRID_X;
				y = 12 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_countleft_4: RscStructuredText
			{
				idc = 1204;
				text = "<t align='center'>lade ...</t>"; 
				x = 31 * GUI_GRID_W + GUI_GRID_X;
				y = 12 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_pricedisplay_1: RscStructuredText
			{
				idc = 1301;
				text = "<t align='center'>lade ...</t>"; 
				x = 7 * GUI_GRID_W + GUI_GRID_X;
				y = 14 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_pricedisplay_2: RscStructuredText
			{
				idc = 1302;
				text = "<t align='center'>lade ...</t>"; 
				x = 15 * GUI_GRID_W + GUI_GRID_X;
				y = 14 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_pricedisplay_3: RscStructuredText
			{
				idc = 1303;
				text = "<t align='center'>lade ...</t>"; 
				x = 23 * GUI_GRID_W + GUI_GRID_X;
				y = 14 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_pricedisplay_4: RscStructuredText
			{
				idc = 1304;
				text = "<t align='center'>lade ...</t>"; 
				x = 31 * GUI_GRID_W + GUI_GRID_X;
				y = 14 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_legend_price: RscStructuredText
			{
				idc = -1;
				text = "<t color='#80ffffff'>Kosten</t>"; 
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 14 * GUI_GRID_H + GUI_GRID_Y;
				w = 5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorText[] = {1,1,1,0.5};
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_legend_countleft: RscStructuredText
			{
				idc = -1;
				text = "<t color='#80ffffff'>Anzahl verf.</t>"; 
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 12 * GUI_GRID_H + GUI_GRID_Y;
				w = 5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorText[] = {1,1,1,0.5};
				colorBackground[] = {-1,-1,-1,0};
			};
			class gui_text_legend_namedisplay: RscStructuredText
			{
				idc = -1;
				text = "<t color='#80ffffff'>Fahrzeug</t>"; 
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 10 * GUI_GRID_H + GUI_GRID_Y;
				w = 5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
				colorText[] = {0.5,0.5,0.5,1};
				colorBackground[] = {-1,-1,-1,0};
			};
			
			class gui_text_headline: RscStructuredTextHeadline
			{
				idc = 1600;
				text = "<t size='2' align='center' color='#33ffffff'>Nachschub anfordern</t>"; 
				x = 2 * GUI_GRID_W + GUI_GRID_X;
				y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 36 * GUI_GRID_W;
				h = 2.5 * GUI_GRID_H;
				colorText[] = {0.3,0.3,0.3,0.5};
				
			};
			class gui_text_credits_remaining: RscStructuredText
			{
				idc = 1700;
				text = "<t align='left'>3000 cr</t>"; 
				x = 1.5 * GUI_GRID_W + GUI_GRID_X;
				y = 1.4 * GUI_GRID_H + GUI_GRID_Y;
				w = 4.5 * GUI_GRID_W;
				h = 2.5 * GUI_GRID_H;
				colorBackground[] = {-1,-1,-1,0};
				tooltip = "Verbleibende Credits"; 
				lineSpacing = 0.4;
			};
			class gui_btn_close: RscButtonSmall
			{
				idc = -1;
				text = "Schließen"; 
				x = 33.2 * GUI_GRID_W + GUI_GRID_X;
				y = 1.4 * GUI_GRID_H + GUI_GRID_Y;
				w = 5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				colorText[] = {1,1,1,0.5};
				colorBackground[] = {0,0,0,1};
				tooltip = "Dialog schließen"; 
				action = "closeDialog 0";
				onMouseEnter = "(_this select 0) ctrlSetTextColor [1, 1, 1, 1]";
				onMouseExit = "(_this select 0) ctrlSetTextColor [1, 1, 1, 0.5]";
				period = 0;
			};
		};
};