require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmDesbravadores22_svg()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmDesbravadores22_svg");
    obj:setAlign("client");
    obj:setMargins({top=-100});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1263);
    obj.rectangle1:setHeight(893);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(1263);
    obj.image1:setHeight(893);
    obj.image1:setSRC("images/2.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(75);
    obj.layout1:setTop(146);
    obj.layout1:setWidth(235);
    obj.layout1:setHeight(48);
    obj.layout1:setName("layout1");

    obj.P1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P1:setParent(obj.layout1);
    obj.P1:setName("P1");
    obj.P1:setVisible(false);
    obj.P1:setTransparent(true);
    obj.P1:setFontSize(18);
    obj.P1:setFontColor("black");
    lfm_setPropAsString(obj.P1, "fontStyle",  "bold");
    obj.P1:setHorzTextAlign("leading");
    obj.P1:setVertTextAlign("center");
    obj.P1:setLeft(0);
    obj.P1:setTop(0);
    obj.P1:setWidth(235);
    obj.P1:setHeight(49);
    obj.P1:setField("Text1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(324);
    obj.layout2:setTop(146);
    obj.layout2:setWidth(235);
    obj.layout2:setHeight(48);
    obj.layout2:setName("layout2");

    obj.P9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P9:setParent(obj.layout2);
    obj.P9:setName("P9");
    obj.P9:setVisible(false);
    obj.P9:setTransparent(true);
    obj.P9:setFontSize(18);
    obj.P9:setFontColor("black");
    lfm_setPropAsString(obj.P9, "fontStyle",  "bold");
    obj.P9:setHorzTextAlign("leading");
    obj.P9:setVertTextAlign("center");
    obj.P9:setLeft(0);
    obj.P9:setTop(0);
    obj.P9:setWidth(235);
    obj.P9:setHeight(49);
    obj.P9:setField("_2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(75);
    obj.layout3:setTop(206);
    obj.layout3:setWidth(235);
    obj.layout3:setHeight(48);
    obj.layout3:setName("layout3");

    obj.P2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P2:setParent(obj.layout3);
    obj.P2:setName("P2");
    obj.P2:setVisible(false);
    obj.P2:setTransparent(true);
    obj.P2:setFontSize(18);
    obj.P2:setFontColor("black");
    lfm_setPropAsString(obj.P2, "fontStyle",  "bold");
    obj.P2:setHorzTextAlign("leading");
    obj.P2:setVertTextAlign("center");
    obj.P2:setLeft(0);
    obj.P2:setTop(0);
    obj.P2:setWidth(235);
    obj.P2:setHeight(49);
    obj.P2:setField("_3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(325);
    obj.layout4:setTop(206);
    obj.layout4:setWidth(235);
    obj.layout4:setHeight(48);
    obj.layout4:setName("layout4");

    obj.P10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P10:setParent(obj.layout4);
    obj.P10:setName("P10");
    obj.P10:setVisible(false);
    obj.P10:setTransparent(true);
    obj.P10:setFontSize(18);
    obj.P10:setFontColor("black");
    lfm_setPropAsString(obj.P10, "fontStyle",  "bold");
    obj.P10:setHorzTextAlign("leading");
    obj.P10:setVertTextAlign("center");
    obj.P10:setLeft(0);
    obj.P10:setTop(0);
    obj.P10:setWidth(235);
    obj.P10:setHeight(49);
    obj.P10:setField("_4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(74);
    obj.layout5:setTop(264);
    obj.layout5:setWidth(235);
    obj.layout5:setHeight(48);
    obj.layout5:setName("layout5");

    obj.P3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P3:setParent(obj.layout5);
    obj.P3:setName("P3");
    obj.P3:setVisible(false);
    obj.P3:setTransparent(true);
    obj.P3:setFontSize(18);
    obj.P3:setFontColor("black");
    lfm_setPropAsString(obj.P3, "fontStyle",  "bold");
    obj.P3:setHorzTextAlign("leading");
    obj.P3:setVertTextAlign("center");
    obj.P3:setLeft(0);
    obj.P3:setTop(0);
    obj.P3:setWidth(235);
    obj.P3:setHeight(49);
    obj.P3:setField("_5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(323);
    obj.layout6:setTop(263);
    obj.layout6:setWidth(235);
    obj.layout6:setHeight(48);
    obj.layout6:setName("layout6");

    obj.P11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P11:setParent(obj.layout6);
    obj.P11:setName("P11");
    obj.P11:setVisible(false);
    obj.P11:setTransparent(true);
    obj.P11:setFontSize(18);
    obj.P11:setFontColor("black");
    lfm_setPropAsString(obj.P11, "fontStyle",  "bold");
    obj.P11:setHorzTextAlign("leading");
    obj.P11:setVertTextAlign("center");
    obj.P11:setLeft(0);
    obj.P11:setTop(0);
    obj.P11:setWidth(235);
    obj.P11:setHeight(49);
    obj.P11:setField("_6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(75);
    obj.layout7:setTop(323);
    obj.layout7:setWidth(235);
    obj.layout7:setHeight(48);
    obj.layout7:setName("layout7");

    obj.P4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P4:setParent(obj.layout7);
    obj.P4:setName("P4");
    obj.P4:setVisible(false);
    obj.P4:setTransparent(true);
    obj.P4:setFontSize(18);
    obj.P4:setFontColor("black");
    lfm_setPropAsString(obj.P4, "fontStyle",  "bold");
    obj.P4:setHorzTextAlign("leading");
    obj.P4:setVertTextAlign("center");
    obj.P4:setLeft(0);
    obj.P4:setTop(0);
    obj.P4:setWidth(235);
    obj.P4:setHeight(49);
    obj.P4:setField("_7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(324);
    obj.layout8:setTop(323);
    obj.layout8:setWidth(235);
    obj.layout8:setHeight(48);
    obj.layout8:setName("layout8");

    obj.P12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P12:setParent(obj.layout8);
    obj.P12:setName("P12");
    obj.P12:setVisible(false);
    obj.P12:setTransparent(true);
    obj.P12:setFontSize(18);
    obj.P12:setFontColor("black");
    lfm_setPropAsString(obj.P12, "fontStyle",  "bold");
    obj.P12:setHorzTextAlign("leading");
    obj.P12:setVertTextAlign("center");
    obj.P12:setLeft(0);
    obj.P12:setTop(0);
    obj.P12:setWidth(235);
    obj.P12:setHeight(49);
    obj.P12:setField("_8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(76);
    obj.layout9:setTop(382);
    obj.layout9:setWidth(235);
    obj.layout9:setHeight(48);
    obj.layout9:setName("layout9");

    obj.P5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P5:setParent(obj.layout9);
    obj.P5:setName("P5");
    obj.P5:setVisible(false);
    obj.P5:setTransparent(true);
    obj.P5:setFontSize(18);
    obj.P5:setFontColor("black");
    lfm_setPropAsString(obj.P5, "fontStyle",  "bold");
    obj.P5:setHorzTextAlign("leading");
    obj.P5:setVertTextAlign("center");
    obj.P5:setLeft(0);
    obj.P5:setTop(0);
    obj.P5:setWidth(235);
    obj.P5:setHeight(49);
    obj.P5:setField("_9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(324);
    obj.layout10:setTop(382);
    obj.layout10:setWidth(235);
    obj.layout10:setHeight(48);
    obj.layout10:setName("layout10");

    obj.P13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P13:setParent(obj.layout10);
    obj.P13:setName("P13");
    obj.P13:setVisible(false);
    obj.P13:setTransparent(true);
    obj.P13:setFontSize(18);
    obj.P13:setFontColor("black");
    lfm_setPropAsString(obj.P13, "fontStyle",  "bold");
    obj.P13:setHorzTextAlign("leading");
    obj.P13:setVertTextAlign("center");
    obj.P13:setLeft(0);
    obj.P13:setTop(0);
    obj.P13:setWidth(235);
    obj.P13:setHeight(49);
    obj.P13:setField("_10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(76);
    obj.layout11:setTop(441);
    obj.layout11:setWidth(235);
    obj.layout11:setHeight(48);
    obj.layout11:setName("layout11");

    obj.P6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P6:setParent(obj.layout11);
    obj.P6:setName("P6");
    obj.P6:setVisible(false);
    obj.P6:setTransparent(true);
    obj.P6:setFontSize(18);
    obj.P6:setFontColor("black");
    lfm_setPropAsString(obj.P6, "fontStyle",  "bold");
    obj.P6:setHorzTextAlign("leading");
    obj.P6:setVertTextAlign("center");
    obj.P6:setLeft(0);
    obj.P6:setTop(0);
    obj.P6:setWidth(235);
    obj.P6:setHeight(49);
    obj.P6:setField("_11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(325);
    obj.layout12:setTop(441);
    obj.layout12:setWidth(235);
    obj.layout12:setHeight(48);
    obj.layout12:setName("layout12");

    obj.P14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P14:setParent(obj.layout12);
    obj.P14:setName("P14");
    obj.P14:setVisible(false);
    obj.P14:setTransparent(true);
    obj.P14:setFontSize(18);
    obj.P14:setFontColor("black");
    lfm_setPropAsString(obj.P14, "fontStyle",  "bold");
    obj.P14:setHorzTextAlign("leading");
    obj.P14:setVertTextAlign("center");
    obj.P14:setLeft(0);
    obj.P14:setTop(0);
    obj.P14:setWidth(235);
    obj.P14:setHeight(49);
    obj.P14:setField("_12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(75);
    obj.layout13:setTop(500);
    obj.layout13:setWidth(235);
    obj.layout13:setHeight(48);
    obj.layout13:setName("layout13");

    obj.P7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P7:setParent(obj.layout13);
    obj.P7:setName("P7");
    obj.P7:setVisible(false);
    obj.P7:setTransparent(true);
    obj.P7:setFontSize(18);
    obj.P7:setFontColor("black");
    lfm_setPropAsString(obj.P7, "fontStyle",  "bold");
    obj.P7:setHorzTextAlign("leading");
    obj.P7:setVertTextAlign("center");
    obj.P7:setLeft(0);
    obj.P7:setTop(0);
    obj.P7:setWidth(235);
    obj.P7:setHeight(49);
    obj.P7:setField("_13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(324);
    obj.layout14:setTop(499);
    obj.layout14:setWidth(235);
    obj.layout14:setHeight(48);
    obj.layout14:setName("layout14");

    obj.P15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P15:setParent(obj.layout14);
    obj.P15:setName("P15");
    obj.P15:setVisible(false);
    obj.P15:setTransparent(true);
    obj.P15:setFontSize(18);
    obj.P15:setFontColor("black");
    lfm_setPropAsString(obj.P15, "fontStyle",  "bold");
    obj.P15:setHorzTextAlign("leading");
    obj.P15:setVertTextAlign("center");
    obj.P15:setLeft(0);
    obj.P15:setTop(0);
    obj.P15:setWidth(235);
    obj.P15:setHeight(49);
    obj.P15:setField("_14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(664);
    obj.layout15:setTop(535);
    obj.layout15:setWidth(235);
    obj.layout15:setHeight(48);
    obj.layout15:setName("layout15");

    obj.P17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P17:setParent(obj.layout15);
    obj.P17:setName("P17");
    obj.P17:setVisible(false);
    obj.P17:setTransparent(true);
    obj.P17:setFontSize(18);
    obj.P17:setFontColor("black");
    lfm_setPropAsString(obj.P17, "fontStyle",  "bold");
    obj.P17:setHorzTextAlign("leading");
    obj.P17:setVertTextAlign("center");
    obj.P17:setLeft(0);
    obj.P17:setTop(0);
    obj.P17:setWidth(235);
    obj.P17:setHeight(49);
    obj.P17:setField("_17");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(913);
    obj.layout16:setTop(535);
    obj.layout16:setWidth(235);
    obj.layout16:setHeight(48);
    obj.layout16:setName("layout16");

    obj.P22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P22:setParent(obj.layout16);
    obj.P22:setName("P22");
    obj.P22:setVisible(false);
    obj.P22:setTransparent(true);
    obj.P22:setFontSize(18);
    obj.P22:setFontColor("black");
    lfm_setPropAsString(obj.P22, "fontStyle",  "bold");
    obj.P22:setHorzTextAlign("leading");
    obj.P22:setVertTextAlign("center");
    obj.P22:setLeft(0);
    obj.P22:setTop(0);
    obj.P22:setWidth(235);
    obj.P22:setHeight(49);
    obj.P22:setField("_18");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(76);
    obj.layout17:setTop(558);
    obj.layout17:setWidth(235);
    obj.layout17:setHeight(48);
    obj.layout17:setName("layout17");

    obj.P8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P8:setParent(obj.layout17);
    obj.P8:setName("P8");
    obj.P8:setVisible(false);
    obj.P8:setTransparent(true);
    obj.P8:setFontSize(18);
    obj.P8:setFontColor("black");
    lfm_setPropAsString(obj.P8, "fontStyle",  "bold");
    obj.P8:setHorzTextAlign("leading");
    obj.P8:setVertTextAlign("center");
    obj.P8:setLeft(0);
    obj.P8:setTop(0);
    obj.P8:setWidth(235);
    obj.P8:setHeight(49);
    obj.P8:setField("_15");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(325);
    obj.layout18:setTop(558);
    obj.layout18:setWidth(235);
    obj.layout18:setHeight(48);
    obj.layout18:setName("layout18");

    obj.P16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P16:setParent(obj.layout18);
    obj.P16:setName("P16");
    obj.P16:setVisible(false);
    obj.P16:setTransparent(true);
    obj.P16:setFontSize(18);
    obj.P16:setFontColor("black");
    lfm_setPropAsString(obj.P16, "fontStyle",  "bold");
    obj.P16:setHorzTextAlign("leading");
    obj.P16:setVertTextAlign("center");
    obj.P16:setLeft(0);
    obj.P16:setTop(0);
    obj.P16:setWidth(235);
    obj.P16:setHeight(49);
    obj.P16:setField("Text2");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(664);
    obj.layout19:setTop(595);
    obj.layout19:setWidth(235);
    obj.layout19:setHeight(48);
    obj.layout19:setName("layout19");

    obj.P18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P18:setParent(obj.layout19);
    obj.P18:setName("P18");
    obj.P18:setVisible(false);
    obj.P18:setTransparent(true);
    obj.P18:setFontSize(18);
    obj.P18:setFontColor("black");
    lfm_setPropAsString(obj.P18, "fontStyle",  "bold");
    obj.P18:setHorzTextAlign("leading");
    obj.P18:setVertTextAlign("center");
    obj.P18:setLeft(0);
    obj.P18:setTop(0);
    obj.P18:setWidth(235);
    obj.P18:setHeight(49);
    obj.P18:setField("_19");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(913);
    obj.layout20:setTop(594);
    obj.layout20:setWidth(235);
    obj.layout20:setHeight(48);
    obj.layout20:setName("layout20");

    obj.P23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P23:setParent(obj.layout20);
    obj.P23:setName("P23");
    obj.P23:setVisible(false);
    obj.P23:setTransparent(true);
    obj.P23:setFontSize(18);
    obj.P23:setFontColor("black");
    lfm_setPropAsString(obj.P23, "fontStyle",  "bold");
    obj.P23:setHorzTextAlign("leading");
    obj.P23:setVertTextAlign("center");
    obj.P23:setLeft(0);
    obj.P23:setTop(0);
    obj.P23:setWidth(235);
    obj.P23:setHeight(49);
    obj.P23:setField("_20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(664);
    obj.layout21:setTop(653);
    obj.layout21:setWidth(235);
    obj.layout21:setHeight(48);
    obj.layout21:setName("layout21");

    obj.P19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P19:setParent(obj.layout21);
    obj.P19:setName("P19");
    obj.P19:setVisible(false);
    obj.P19:setTransparent(true);
    obj.P19:setFontSize(18);
    obj.P19:setFontColor("black");
    lfm_setPropAsString(obj.P19, "fontStyle",  "bold");
    obj.P19:setHorzTextAlign("leading");
    obj.P19:setVertTextAlign("center");
    obj.P19:setLeft(0);
    obj.P19:setTop(0);
    obj.P19:setWidth(235);
    obj.P19:setHeight(49);
    obj.P19:setField("_21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(912);
    obj.layout22:setTop(654);
    obj.layout22:setWidth(235);
    obj.layout22:setHeight(48);
    obj.layout22:setName("layout22");

    obj.P24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P24:setParent(obj.layout22);
    obj.P24:setName("P24");
    obj.P24:setVisible(false);
    obj.P24:setTransparent(true);
    obj.P24:setFontSize(18);
    obj.P24:setFontColor("black");
    lfm_setPropAsString(obj.P24, "fontStyle",  "bold");
    obj.P24:setHorzTextAlign("leading");
    obj.P24:setVertTextAlign("center");
    obj.P24:setLeft(0);
    obj.P24:setTop(0);
    obj.P24:setWidth(235);
    obj.P24:setHeight(49);
    obj.P24:setField("_22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(662);
    obj.layout23:setTop(712);
    obj.layout23:setWidth(235);
    obj.layout23:setHeight(48);
    obj.layout23:setName("layout23");

    obj.P20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P20:setParent(obj.layout23);
    obj.P20:setName("P20");
    obj.P20:setVisible(false);
    obj.P20:setTransparent(true);
    obj.P20:setFontSize(18);
    obj.P20:setFontColor("black");
    lfm_setPropAsString(obj.P20, "fontStyle",  "bold");
    obj.P20:setHorzTextAlign("leading");
    obj.P20:setVertTextAlign("center");
    obj.P20:setLeft(0);
    obj.P20:setTop(0);
    obj.P20:setWidth(235);
    obj.P20:setHeight(49);
    obj.P20:setField("_23");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(912);
    obj.layout24:setTop(712);
    obj.layout24:setWidth(235);
    obj.layout24:setHeight(48);
    obj.layout24:setName("layout24");

    obj.P25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P25:setParent(obj.layout24);
    obj.P25:setName("P25");
    obj.P25:setVisible(false);
    obj.P25:setTransparent(true);
    obj.P25:setFontSize(18);
    obj.P25:setFontColor("black");
    lfm_setPropAsString(obj.P25, "fontStyle",  "bold");
    obj.P25:setHorzTextAlign("leading");
    obj.P25:setVertTextAlign("center");
    obj.P25:setLeft(0);
    obj.P25:setTop(0);
    obj.P25:setWidth(235);
    obj.P25:setHeight(49);
    obj.P25:setField("_24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(664);
    obj.layout25:setTop(771);
    obj.layout25:setWidth(235);
    obj.layout25:setHeight(48);
    obj.layout25:setName("layout25");

    obj.P21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P21:setParent(obj.layout25);
    obj.P21:setName("P21");
    obj.P21:setVisible(false);
    obj.P21:setTransparent(true);
    obj.P21:setFontSize(18);
    obj.P21:setFontColor("black");
    lfm_setPropAsString(obj.P21, "fontStyle",  "bold");
    obj.P21:setHorzTextAlign("leading");
    obj.P21:setVertTextAlign("center");
    obj.P21:setLeft(0);
    obj.P21:setTop(0);
    obj.P21:setWidth(235);
    obj.P21:setHeight(49);
    obj.P21:setField("_25");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(912);
    obj.layout26:setTop(771);
    obj.layout26:setWidth(235);
    obj.layout26:setHeight(48);
    obj.layout26:setName("layout26");

    obj.P26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.P26:setParent(obj.layout26);
    obj.P26:setName("P26");
    obj.P26:setVisible(false);
    obj.P26:setTransparent(true);
    obj.P26:setFontSize(18);
    obj.P26:setFontColor("black");
    lfm_setPropAsString(obj.P26, "fontStyle",  "bold");
    obj.P26:setHorzTextAlign("leading");
    obj.P26:setVertTextAlign("center");
    obj.P26:setLeft(0);
    obj.P26:setTop(0);
    obj.P26:setWidth(235);
    obj.P26:setHeight(49);
    obj.P26:setField("_26");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    lfm_setPropAsString(obj.image2, "animate",  "true");
    obj.image2:setSRC("/Gif/dragaoFichaPrincipal.gif");
    obj.image2:setLeft(26.75);
    obj.image2:setTop(570);
    obj.image2:setWidth(500);
    obj.image2:setHeight(300);
    obj.image2:setName("image2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.scrollBox1);
    lfm_setPropAsString(obj.image3, "animate",  "true");
    obj.image3:setSRC("/Gif/rosasShow.gif");
    obj.image3:setLeft(26.75);
    obj.image3:setTop(570);
    obj.image3:setWidth(500);
    obj.image3:setHeight(300);
    obj.image3:setName("image3");

    obj.Bloqueio1 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio1:setParent(obj.scrollBox1);
    obj.Bloqueio1:setName("Bloqueio1");
    obj.Bloqueio1:setVisible(true);
    obj.Bloqueio1:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio1:setLeft(73);
    obj.Bloqueio1:setTop(136);
    obj.Bloqueio1:setWidth(237);
    obj.Bloqueio1:setHeight(71);

    obj.Bloqueio2 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio2:setParent(obj.scrollBox1);
    obj.Bloqueio2:setName("Bloqueio2");
    obj.Bloqueio2:setVisible(true);
    obj.Bloqueio2:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio2:setLeft(73);
    obj.Bloqueio2:setTop(195);
    obj.Bloqueio2:setWidth(237);
    obj.Bloqueio2:setHeight(71);

    obj.Bloqueio3 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio3:setParent(obj.scrollBox1);
    obj.Bloqueio3:setName("Bloqueio3");
    obj.Bloqueio3:setVisible(true);
    obj.Bloqueio3:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio3:setLeft(73);
    obj.Bloqueio3:setTop(254);
    obj.Bloqueio3:setWidth(237);
    obj.Bloqueio3:setHeight(71);

    obj.Bloqueio4 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio4:setParent(obj.scrollBox1);
    obj.Bloqueio4:setName("Bloqueio4");
    obj.Bloqueio4:setVisible(true);
    obj.Bloqueio4:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio4:setLeft(73);
    obj.Bloqueio4:setTop(313);
    obj.Bloqueio4:setWidth(237);
    obj.Bloqueio4:setHeight(71);

    obj.Bloqueio5 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio5:setParent(obj.scrollBox1);
    obj.Bloqueio5:setName("Bloqueio5");
    obj.Bloqueio5:setVisible(true);
    obj.Bloqueio5:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio5:setLeft(73);
    obj.Bloqueio5:setTop(372);
    obj.Bloqueio5:setWidth(237);
    obj.Bloqueio5:setHeight(71);

    obj.Bloqueio6 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio6:setParent(obj.scrollBox1);
    obj.Bloqueio6:setName("Bloqueio6");
    obj.Bloqueio6:setVisible(true);
    obj.Bloqueio6:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio6:setLeft(73);
    obj.Bloqueio6:setTop(431);
    obj.Bloqueio6:setWidth(237);
    obj.Bloqueio6:setHeight(71);

    obj.Bloqueio7 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio7:setParent(obj.scrollBox1);
    obj.Bloqueio7:setName("Bloqueio7");
    obj.Bloqueio7:setVisible(true);
    obj.Bloqueio7:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio7:setLeft(73);
    obj.Bloqueio7:setTop(490);
    obj.Bloqueio7:setWidth(237);
    obj.Bloqueio7:setHeight(71);

    obj.Bloqueio8 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio8:setParent(obj.scrollBox1);
    obj.Bloqueio8:setName("Bloqueio8");
    obj.Bloqueio8:setVisible(true);
    obj.Bloqueio8:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio8:setLeft(73);
    obj.Bloqueio8:setTop(549);
    obj.Bloqueio8:setWidth(237);
    obj.Bloqueio8:setHeight(71);

    obj.Bloqueio9 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio9:setParent(obj.scrollBox1);
    obj.Bloqueio9:setName("Bloqueio9");
    obj.Bloqueio9:setVisible(true);
    obj.Bloqueio9:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio9:setLeft(322);
    obj.Bloqueio9:setTop(136);
    obj.Bloqueio9:setWidth(237);
    obj.Bloqueio9:setHeight(71);

    obj.Bloqueio10 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio10:setParent(obj.scrollBox1);
    obj.Bloqueio10:setName("Bloqueio10");
    obj.Bloqueio10:setVisible(true);
    obj.Bloqueio10:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio10:setLeft(322);
    obj.Bloqueio10:setTop(195);
    obj.Bloqueio10:setWidth(237);
    obj.Bloqueio10:setHeight(71);

    obj.Bloqueio11 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio11:setParent(obj.scrollBox1);
    obj.Bloqueio11:setName("Bloqueio11");
    obj.Bloqueio11:setVisible(true);
    obj.Bloqueio11:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio11:setLeft(322);
    obj.Bloqueio11:setTop(254);
    obj.Bloqueio11:setWidth(237);
    obj.Bloqueio11:setHeight(71);

    obj.Bloqueio12 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio12:setParent(obj.scrollBox1);
    obj.Bloqueio12:setName("Bloqueio12");
    obj.Bloqueio12:setVisible(true);
    obj.Bloqueio12:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio12:setLeft(322);
    obj.Bloqueio12:setTop(313);
    obj.Bloqueio12:setWidth(237);
    obj.Bloqueio12:setHeight(71);

    obj.Bloqueio13 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio13:setParent(obj.scrollBox1);
    obj.Bloqueio13:setName("Bloqueio13");
    obj.Bloqueio13:setVisible(true);
    obj.Bloqueio13:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio13:setLeft(322);
    obj.Bloqueio13:setTop(372);
    obj.Bloqueio13:setWidth(237);
    obj.Bloqueio13:setHeight(71);

    obj.Bloqueio14 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio14:setParent(obj.scrollBox1);
    obj.Bloqueio14:setName("Bloqueio14");
    obj.Bloqueio14:setVisible(true);
    obj.Bloqueio14:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio14:setLeft(322);
    obj.Bloqueio14:setTop(431);
    obj.Bloqueio14:setWidth(237);
    obj.Bloqueio14:setHeight(71);

    obj.Bloqueio15 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio15:setParent(obj.scrollBox1);
    obj.Bloqueio15:setName("Bloqueio15");
    obj.Bloqueio15:setVisible(true);
    obj.Bloqueio15:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio15:setLeft(322);
    obj.Bloqueio15:setTop(490);
    obj.Bloqueio15:setWidth(237);
    obj.Bloqueio15:setHeight(71);

    obj.Bloqueio16 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio16:setParent(obj.scrollBox1);
    obj.Bloqueio16:setName("Bloqueio16");
    obj.Bloqueio16:setVisible(true);
    obj.Bloqueio16:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio16:setLeft(322);
    obj.Bloqueio16:setTop(549);
    obj.Bloqueio16:setWidth(237);
    obj.Bloqueio16:setHeight(71);

    obj.Bloqueio17 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio17:setParent(obj.scrollBox1);
    obj.Bloqueio17:setName("Bloqueio17");
    obj.Bloqueio17:setVisible(true);
    obj.Bloqueio17:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio17:setLeft(663);
    obj.Bloqueio17:setTop(525);
    obj.Bloqueio17:setWidth(237);
    obj.Bloqueio17:setHeight(71);

    obj.Bloqueio18 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio18:setParent(obj.scrollBox1);
    obj.Bloqueio18:setName("Bloqueio18");
    obj.Bloqueio18:setVisible(true);
    obj.Bloqueio18:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio18:setLeft(663);
    obj.Bloqueio18:setTop(584);
    obj.Bloqueio18:setWidth(237);
    obj.Bloqueio18:setHeight(71);

    obj.Bloqueio19 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio19:setParent(obj.scrollBox1);
    obj.Bloqueio19:setName("Bloqueio19");
    obj.Bloqueio19:setVisible(true);
    obj.Bloqueio19:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio19:setLeft(663);
    obj.Bloqueio19:setTop(643);
    obj.Bloqueio19:setWidth(237);
    obj.Bloqueio19:setHeight(71);

    obj.Bloqueio20 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio20:setParent(obj.scrollBox1);
    obj.Bloqueio20:setName("Bloqueio20");
    obj.Bloqueio20:setVisible(true);
    obj.Bloqueio20:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio20:setLeft(663);
    obj.Bloqueio20:setTop(702);
    obj.Bloqueio20:setWidth(237);
    obj.Bloqueio20:setHeight(71);

    obj.Bloqueio21 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio21:setParent(obj.scrollBox1);
    obj.Bloqueio21:setName("Bloqueio21");
    obj.Bloqueio21:setVisible(true);
    obj.Bloqueio21:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio21:setLeft(663);
    obj.Bloqueio21:setTop(761);
    obj.Bloqueio21:setWidth(237);
    obj.Bloqueio21:setHeight(71);

    obj.Bloqueio22 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio22:setParent(obj.scrollBox1);
    obj.Bloqueio22:setName("Bloqueio22");
    obj.Bloqueio22:setVisible(true);
    obj.Bloqueio22:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio22:setLeft(913);
    obj.Bloqueio22:setTop(525);
    obj.Bloqueio22:setWidth(237);
    obj.Bloqueio22:setHeight(71);

    obj.Bloqueio23 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio23:setParent(obj.scrollBox1);
    obj.Bloqueio23:setName("Bloqueio23");
    obj.Bloqueio23:setVisible(true);
    obj.Bloqueio23:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio23:setLeft(913);
    obj.Bloqueio23:setTop(584);
    obj.Bloqueio23:setWidth(237);
    obj.Bloqueio23:setHeight(71);

    obj.Bloqueio24 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio24:setParent(obj.scrollBox1);
    obj.Bloqueio24:setName("Bloqueio24");
    obj.Bloqueio24:setVisible(true);
    obj.Bloqueio24:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio24:setLeft(913);
    obj.Bloqueio24:setTop(643);
    obj.Bloqueio24:setWidth(237);
    obj.Bloqueio24:setHeight(71);

    obj.Bloqueio25 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio25:setParent(obj.scrollBox1);
    obj.Bloqueio25:setName("Bloqueio25");
    obj.Bloqueio25:setVisible(true);
    obj.Bloqueio25:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio25:setLeft(913);
    obj.Bloqueio25:setTop(702);
    obj.Bloqueio25:setWidth(237);
    obj.Bloqueio25:setHeight(71);

    obj.Bloqueio26 = GUI.fromHandle(_obj_newObject("image"));
    obj.Bloqueio26:setParent(obj.scrollBox1);
    obj.Bloqueio26:setName("Bloqueio26");
    obj.Bloqueio26:setVisible(true);
    obj.Bloqueio26:setSRC("/Imagens/bloqueio.png");
    obj.Bloqueio26:setLeft(913);
    obj.Bloqueio26:setTop(761);
    obj.Bloqueio26:setWidth(237);
    obj.Bloqueio26:setHeight(71);

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.scrollBox1);
    obj.image4:setSRC("/Imagens/Nivel.png");
    obj.image4:setLeft(619.75);
    obj.image4:setTop(152.25);
    obj.image4:setWidth(76);
    obj.image4:setHeight(26);
    obj.image4:setName("image4");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.image4);
    obj.label1:setField("nivel");
    obj.label1:setAlign("left");
    obj.label1:setMargins({left=80, top=-7});
    obj.label1:setFontColor("green");
    obj.label1:setAutoSize(true);
    obj.label1:setFontSize(32);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setWordWrap(false);
    obj.label1:setName("label1");


local function avisoPericiafunc();
	
		if sheet.nivel == 1 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Preencha suas pericias iniciais:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
	end; 

		if sheet.nivel == 3 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
 
    end;


		if sheet.nivel == 5 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 7 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 9 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 11 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 13 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 15 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 17 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 19 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 21 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 23 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 25 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 27 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 29 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;

		if sheet.nivel == 30 then
			local chat = rrpg.getMesaDe(sheet).chat;
			chat:enviarMensagem("[§K2]>>" .."[§K5]" .. sheet.Nome  .. 
			":" .." [§K11]Um slot de pericia foi aberto:" .. "[§K7]" .. " Nível: " 
			 .. sheet.nivel .. "!" .. 
			"[§K13]" .. " ~Vá para aba de pericias. :)");
    end;
    end;




 


    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.scrollBox1);
    obj.button1:setText("UP");
    obj.button1:setFontColor("yellow");
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");
    obj.button1:setLeft(655);
    obj.button1:setTop(123);
    obj.button1:setWidth(28);
    obj.button1:setHeight(20);
    obj.button1:setName("button1");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.scrollBox1);
    lfm_setPropAsString(obj.image5, "animate",  "true");
    obj.image5:setSRC("/Gif/nivelDestaque.gif");
    obj.image5:setLeft(425);
    obj.image5:setTop(-85);
    obj.image5:setWidth(500);
    obj.image5:setHeight(500);
    obj.image5:setName("image5");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.scrollBox1);
    obj.dataLink1:setField("nivel");
    obj.dataLink1:setName("dataLink1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            if rrpg.getMesaDe(sheet).meuJogador.isMestre then
                     
            		 sheet.nivel = (sheet.nivel or 0) +1;avisoPericiafunc();
            		 else
            		 showMessage("Desculpe, você não pode aumentar seu nível, peça para o mestre fazer isso.")
            		 end;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onMenu",
        function (_, x, y)
            if rrpg.getMesaDe(sheet).meuJogador.isMestre then
                     sheet.nivel = (sheet.nivel or 0) -1;
                     else
                      showMessage("Desculpe, você não pode diminuir seu nível, peça para o mestre fazer isso.")	 
            		 end;
        end, obj);

    obj._e_event2 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.nivel >= 1 then
                self.P1.visible = true
                self.P2.visible = true
                self.P3.visible = true
                self.P4.visible = true
                self.P5.visible = true
                self.Bloqueio1.visible = false
                self.Bloqueio2.visible = false
                self.Bloqueio3.visible = false
                self.Bloqueio4.visible = false
                self.Bloqueio5.visible = false
                 else
                self.P1.visible = false;
                self.P2.visible = false;
                self.P3.visible = false;
                self.P4.visible = false;
                self.P5.visible = false;
                self.Bloqueio1.visible = true;
                self.Bloqueio2.visible = true;
                self.Bloqueio3.visible = true;
                self.Bloqueio4.visible = true;
                self.Bloqueio5.visible = true;
                end;
                if sheet.nivel >= 1 then
                self.P17.visible = true
                self.P18.visible = true
                self.P19.visible = true
                self.P20.visible = true
                self.Bloqueio17.visible = false;
                self.Bloqueio18.visible = false;
                self.Bloqueio19.visible = false;
                self.Bloqueio20.visible = false;
                 else
                self.P17.visible = false
                self.P18.visible = false
                self.P19.visible = false
                self.P20.visible = false
                self.P21.visible = false
                self.Bloqueio17.visible = true;
                self.Bloqueio18.visible = true;
                self.Bloqueio19.visible = true;
                self.Bloqueio20.visible = true;
                self.Bloqueio21.visible = true;
                end;
            
                if sheet.nivel >= 3 then
                self.P6.visible = true
                self.Bloqueio6.visible = false;   
                 else  
                self.P6.visible = false
                self.Bloqueio6.visible = true;   
                 end;
                 
                if sheet.nivel >= 5 then
                self.P7.visible = true
                self.Bloqueio7.visible = false;   
                 else  
                self.P7.visible = false
                self.Bloqueio7.visible = true;   
                 end;  
                    
                if sheet.nivel >= 7 then
                self.P8.visible = true
                self.Bloqueio8.visible = false;   
                 else  
                self.P8.visible = false
                self.Bloqueio8.visible = true;   
                 end;
            
                if sheet.nivel >= 9 then
                self.P9.visible = true
                self.Bloqueio9.visible = false;   
                 else  
                self.P9.visible = false
                self.Bloqueio9.visible = true;   
                 end;
            
                if sheet.nivel >= 11 then
                self.P10.visible = true
                self.Bloqueio10.visible = false;   
                 else  
                self.P10.visible = false
                self.Bloqueio10.visible = true;   
                 end;
            
                if sheet.nivel >= 13 then
                self.P11.visible = true
                self.Bloqueio11.visible = false;   
                 else  
                self.P11.visible = false
                self.Bloqueio11.visible = true;   
                 end;
            
                if sheet.nivel >= 15 then
                self.P12.visible = true
                self.Bloqueio12.visible = false;   
                 else  
                self.P12.visible = false
                self.Bloqueio12.visible = true;   
                 end;
            
                if sheet.nivel >= 17 then
                self.P13.visible = true
                self.Bloqueio13.visible = false;   
                 else  
                self.P13.visible = false
                self.Bloqueio13.visible = true;   
                 end;
            
                if sheet.nivel >= 19 then
                self.P14.visible = true
                self.Bloqueio14.visible = false;   
                 else  
                self.P14.visible = false
                self.Bloqueio14.visible = true;   
                 end;
            
                if sheet.nivel >= 21 then
                self.P15.visible = true
                self.Bloqueio15.visible = false;   
                 else  
                self.P15.visible = false
                self.Bloqueio15.visible = true;   
                 end;
            
                if sheet.nivel >= 23 then
                self.P16.visible = true
                self.Bloqueio16.visible = false;   
                 else  
                self.P16.visible = false
                self.Bloqueio16.visible = true;   
                 end;
            
                if sheet.nivel >= 25 then
                self.P21.visible = true
                self.Bloqueio21.visible = false;   
                 else  
                self.P21.visible = false
                self.Bloqueio21.visible = true;   
                 end;
            
                if sheet.nivel >= 27 then
                self.P22.visible = true
                self.Bloqueio22.visible = false;   
                 else  
                self.P22.visible = false
                self.Bloqueio22.visible = true;   
                 end;
            
                if sheet.nivel >= 29 then
                self.P23.visible = true
                self.Bloqueio23.visible = false;   
                 else  
                self.P23.visible = false
                self.Bloqueio23.visible = true;   
                 end;
            
                if sheet.nivel >= 30 then
                self.P24.visible = true
                self.P25.visible = true
                self.P26.visible = true
                self.Bloqueio24.visible = false;
                self.Bloqueio25.visible = false;
                self.Bloqueio26.visible = false;
                 else
                self.P24.visible = false
                self.P25.visible = false
                self.P26.visible = false
                self.Bloqueio24.visible = true;
                self.Bloqueio25.visible = true;
                self.Bloqueio26.visible = true;  
                end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.Bloqueio18 ~= nil then self.Bloqueio18:destroy(); self.Bloqueio18 = nil; end;
        if self.P3 ~= nil then self.P3:destroy(); self.P3 = nil; end;
        if self.P17 ~= nil then self.P17:destroy(); self.P17 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.P1 ~= nil then self.P1:destroy(); self.P1 = nil; end;
        if self.P16 ~= nil then self.P16:destroy(); self.P16 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.P20 ~= nil then self.P20:destroy(); self.P20 = nil; end;
        if self.P4 ~= nil then self.P4:destroy(); self.P4 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.P24 ~= nil then self.P24:destroy(); self.P24 = nil; end;
        if self.P23 ~= nil then self.P23:destroy(); self.P23 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.Bloqueio15 ~= nil then self.Bloqueio15:destroy(); self.Bloqueio15 = nil; end;
        if self.Bloqueio21 ~= nil then self.Bloqueio21:destroy(); self.Bloqueio21 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.Bloqueio26 ~= nil then self.Bloqueio26:destroy(); self.Bloqueio26 = nil; end;
        if self.P26 ~= nil then self.P26:destroy(); self.P26 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.Bloqueio17 ~= nil then self.Bloqueio17:destroy(); self.Bloqueio17 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.Bloqueio4 ~= nil then self.Bloqueio4:destroy(); self.Bloqueio4 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.P9 ~= nil then self.P9:destroy(); self.P9 = nil; end;
        if self.P19 ~= nil then self.P19:destroy(); self.P19 = nil; end;
        if self.P14 ~= nil then self.P14:destroy(); self.P14 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.P5 ~= nil then self.P5:destroy(); self.P5 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.Bloqueio23 ~= nil then self.Bloqueio23:destroy(); self.Bloqueio23 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.Bloqueio24 ~= nil then self.Bloqueio24:destroy(); self.Bloqueio24 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.P18 ~= nil then self.P18:destroy(); self.P18 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.Bloqueio1 ~= nil then self.Bloqueio1:destroy(); self.Bloqueio1 = nil; end;
        if self.Bloqueio5 ~= nil then self.Bloqueio5:destroy(); self.Bloqueio5 = nil; end;
        if self.Bloqueio19 ~= nil then self.Bloqueio19:destroy(); self.Bloqueio19 = nil; end;
        if self.Bloqueio25 ~= nil then self.Bloqueio25:destroy(); self.Bloqueio25 = nil; end;
        if self.P7 ~= nil then self.P7:destroy(); self.P7 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.Bloqueio16 ~= nil then self.Bloqueio16:destroy(); self.Bloqueio16 = nil; end;
        if self.P13 ~= nil then self.P13:destroy(); self.P13 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.P2 ~= nil then self.P2:destroy(); self.P2 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.Bloqueio10 ~= nil then self.Bloqueio10:destroy(); self.Bloqueio10 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.Bloqueio13 ~= nil then self.Bloqueio13:destroy(); self.Bloqueio13 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.Bloqueio8 ~= nil then self.Bloqueio8:destroy(); self.Bloqueio8 = nil; end;
        if self.P8 ~= nil then self.P8:destroy(); self.P8 = nil; end;
        if self.P11 ~= nil then self.P11:destroy(); self.P11 = nil; end;
        if self.P10 ~= nil then self.P10:destroy(); self.P10 = nil; end;
        if self.Bloqueio9 ~= nil then self.Bloqueio9:destroy(); self.Bloqueio9 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.Bloqueio7 ~= nil then self.Bloqueio7:destroy(); self.Bloqueio7 = nil; end;
        if self.P15 ~= nil then self.P15:destroy(); self.P15 = nil; end;
        if self.Bloqueio11 ~= nil then self.Bloqueio11:destroy(); self.Bloqueio11 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.Bloqueio22 ~= nil then self.Bloqueio22:destroy(); self.Bloqueio22 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.P12 ~= nil then self.P12:destroy(); self.P12 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.Bloqueio3 ~= nil then self.Bloqueio3:destroy(); self.Bloqueio3 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.P22 ~= nil then self.P22:destroy(); self.P22 = nil; end;
        if self.P21 ~= nil then self.P21:destroy(); self.P21 = nil; end;
        if self.Bloqueio2 ~= nil then self.Bloqueio2:destroy(); self.Bloqueio2 = nil; end;
        if self.Bloqueio20 ~= nil then self.Bloqueio20:destroy(); self.Bloqueio20 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.P25 ~= nil then self.P25:destroy(); self.P25 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.P6 ~= nil then self.P6:destroy(); self.P6 = nil; end;
        if self.Bloqueio6 ~= nil then self.Bloqueio6:destroy(); self.Bloqueio6 = nil; end;
        if self.Bloqueio12 ~= nil then self.Bloqueio12:destroy(); self.Bloqueio12 = nil; end;
        if self.Bloqueio14 ~= nil then self.Bloqueio14:destroy(); self.Bloqueio14 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmDesbravadores22_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmDesbravadores22_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmDesbravadores22_svg = {
    newEditor = newfrmDesbravadores22_svg, 
    new = newfrmDesbravadores22_svg, 
    name = "frmDesbravadores22_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmDesbravadores22_svg = _frmDesbravadores22_svg;
Firecast.registrarForm(_frmDesbravadores22_svg);

return _frmDesbravadores22_svg;
