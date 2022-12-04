require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmDesbravadores1_svg()
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
    obj:setName("frmDesbravadores1_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(980);
    obj.rectangle1:setHeight(726);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(980);
    obj.image1:setHeight(726);
    obj.image1:setSRC("images/4.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(75);
    obj.layout1:setTop(125.50);
    obj.layout1:setWidth(349);
    obj.layout1:setHeight(471);
    obj.layout1:setName("layout1");

    obj.Historia = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.Historia:setParent(obj.layout1);
    obj.Historia:setVisible(false);
    obj.Historia:setLeft(15);
    obj.Historia:setTop(0);
    obj.Historia:setWidth(350);
    obj.Historia:setHeight(450);
    obj.Historia:setFontSize(21);
    obj.Historia:setFontColor("#000000");
    obj.Historia:setField("Historia");
    obj.Historia:setName("Historia");
    obj.Historia:setTransparent(true);

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.scrollBox1);
    obj.richEdit1:setName("richEdit1");
    obj.richEdit1:setField("richEdit1");
    obj.richEdit1:setVisible(true);
    obj.richEdit1:setLeft(72);
    obj.richEdit1:setTop(125.50);
    obj.richEdit1:setWidth(350);
    obj.richEdit1:setHeight(480.50);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "black");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");

    obj.Conteudo = GUI.fromHandle(_obj_newObject("layout"));
    obj.Conteudo:setParent(obj.scrollBox1);
    obj.Conteudo:setName("Conteudo");
    obj.Conteudo:setLeft(850);
    obj.Conteudo:setTop(0);
    obj.Conteudo:setWidth(131);
    obj.Conteudo:setHeight(62);

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.Conteudo);
    obj.button1:setText("Conteúdo novo");
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");
    obj.button1:setFontColor("black");
    obj.button1:setLeft(0);
    obj.button1:setTop(0);
    obj.button1:setWidth(113);
    obj.button1:setHeight(22);
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.Conteudo);
    obj.button2:setText("Conteúdo antigo");
    obj.button2:setFontColor("black");
    lfm_setPropAsString(obj.button2, "fontStyle",  "bold");
    obj.button2:setLeft(0);
    obj.button2:setTop(30);
    obj.button2:setWidth(120);
    obj.button2:setHeight(22);
    obj.button2:setName("button2");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setField("Mapa");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setLeft(565);
    obj.image2:setTop(106);
    obj.image2:setWidth(292);
    obj.image2:setHeight(233.25);
    obj.image2:setName("image2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.scrollBox1);
    obj.image3:setField("passado");
    obj.image3:setEditable(true);
    obj.image3:setStyle("autoFit");
    obj.image3:setLeft(605);
    obj.image3:setTop(467.50);
    obj.image3:setWidth(210.75);
    obj.image3:setHeight(189.75);
    obj.image3:setName("image3");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            self.Historia.visible = false;
                   self.richEdit1.visible = true
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            self.Historia.visible = true;
                   self.richEdit1.visible = false
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.Conteudo ~= nil then self.Conteudo:destroy(); self.Conteudo = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.Historia ~= nil then self.Historia:destroy(); self.Historia = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmDesbravadores1_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmDesbravadores1_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmDesbravadores1_svg = {
    newEditor = newfrmDesbravadores1_svg, 
    new = newfrmDesbravadores1_svg, 
    name = "frmDesbravadores1_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmDesbravadores1_svg = _frmDesbravadores1_svg;
Firecast.registrarForm(_frmDesbravadores1_svg);

return _frmDesbravadores1_svg;
