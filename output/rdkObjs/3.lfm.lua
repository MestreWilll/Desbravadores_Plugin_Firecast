require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmDesbravadores2_svg()
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
    obj:setName("frmDesbravadores2_svg");
    obj:setAlign("client");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.anotacaoPrincipal = GUI.fromHandle(_obj_newObject("image"));
    obj.anotacaoPrincipal:setParent(obj.scrollBox1);
    obj.anotacaoPrincipal:setName("anotacaoPrincipal");
    obj.anotacaoPrincipal:setLeft(0);
    obj.anotacaoPrincipal:setTop(0);
    obj.anotacaoPrincipal:setWidth(1263);
    obj.anotacaoPrincipal:setHeight(893);
    obj.anotacaoPrincipal:setSRC("images/3.png");
    obj.anotacaoPrincipal:setStyle("stretch");
    obj.anotacaoPrincipal:setOptimize(true);

    obj.textEditorAntigo = GUI.fromHandle(_obj_newObject("layout"));
    obj.textEditorAntigo:setParent(obj.scrollBox1);
    obj.textEditorAntigo:setName("textEditorAntigo");
    obj.textEditorAntigo:setLeft(178);
    obj.textEditorAntigo:setTop(176);
    obj.textEditorAntigo:setWidth(918);
    obj.textEditorAntigo:setHeight(607);

    obj.Anotacao = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.Anotacao:setParent(obj.textEditorAntigo);
    obj.Anotacao:setLeft(0);
    obj.Anotacao:setTop(0);
    obj.Anotacao:setWidth(918);
    obj.Anotacao:setHeight(607);
    obj.Anotacao:setFontSize(21);
    obj.Anotacao:setFontColor("#000000");
    obj.Anotacao:setField("Anotação");
    obj.Anotacao:setName("Anotacao");
    obj.Anotacao:setTransparent(true);
    obj.Anotacao:setVisible(false);

    obj.AnotacaoTotal = GUI.fromHandle(_obj_newObject("layout"));
    obj.AnotacaoTotal:setParent(obj.scrollBox1);
    obj.AnotacaoTotal:setName("AnotacaoTotal");
    obj.AnotacaoTotal:setLeft(0);
    obj.AnotacaoTotal:setTop(0);
    obj.AnotacaoTotal:setWidth(500);
    obj.AnotacaoTotal:setHeight(300);
    obj.AnotacaoTotal:setVisible(false);

    obj.troca3 = GUI.fromHandle(_obj_newObject("image"));
    obj.troca3:setParent(obj.AnotacaoTotal);
    obj.troca3:setHitTest(true);
    obj.troca3:setCursor("handPoint");
    obj.troca3:setLeft(455);
    obj.troca3:setTop(0);
    obj.troca3:setWidth(40);
    obj.troca3:setHeight(40);
    obj.troca3:setName("troca3");
    obj.troca3:setSRC("/Imagens/vender_on.png");

    obj.novoContato = GUI.fromHandle(_obj_newObject("layout"));
    obj.novoContato:setParent(obj.AnotacaoTotal);
    obj.novoContato:setName("novoContato");
    obj.novoContato:setAlign("top");
    obj.novoContato:setHeight(30);
    obj.novoContato:setMargins({bottom=4});

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.novoContato);
    obj.button1:setText("Novo Contato");
    obj.button1:setWidth(150);
    obj.button1:setAlign("left");
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");
    obj.button1:setName("button1");

    obj.rclListaDosItens3 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens3:setParent(obj.AnotacaoTotal);
    obj.rclListaDosItens3:setName("rclListaDosItens3");
    obj.rclListaDosItens3:setField("campoDosItens3");
    obj.rclListaDosItens3:setTemplateForm("frmListaDeContatos");
    obj.rclListaDosItens3:setAlign("top");
    obj.rclListaDosItens3:setSelectable(true);
    obj.rclListaDosItens3:setLayout("horizontal");
    obj.rclListaDosItens3:setHeight(70);

    obj.boxDetalhesDoItem3 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem3:setParent(obj.AnotacaoTotal);
    obj.boxDetalhesDoItem3:setName("boxDetalhesDoItem3");
    obj.boxDetalhesDoItem3:setVisible(false);
    obj.boxDetalhesDoItem3:setAlign("client");
    obj.boxDetalhesDoItem3:setMargins({left=4, right=4, top=2});

    obj.rectangle = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle:setParent(obj.boxDetalhesDoItem3);
    obj.rectangle:setName("rectangle");
    obj.rectangle:setAlign("client");
    obj.rectangle:setColor("black");
    obj.rectangle:setXradius(10);
    obj.rectangle:setYradius(10);
    obj.rectangle:setPadding({top=3, left=3, right=3, bottom=3});

    obj.nomes = GUI.fromHandle(_obj_newObject("layout"));
    obj.nomes:setParent(obj.rectangle);
    obj.nomes:setName("nomes");
    obj.nomes:setAlign("top");
    obj.nomes:setHeight(30);
    obj.nomes:setMargins({bottom=4});

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.nomes);
    obj.label1:setAlign("left");
    obj.label1:setText("Nome:");
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.nomes);
    obj.edit1:setAlign("client");
    obj.edit1:setField("campoTitulo3");
    obj.edit1:setName("edit1");

    obj.excluirContato = GUI.fromHandle(_obj_newObject("button"));
    obj.excluirContato:setParent(obj.nomes);
    obj.excluirContato:setName("excluirContato");
    obj.excluirContato:setAlign("right");
    obj.excluirContato:setText("Excluir Contato!");
    obj.excluirContato:setMargins({left=4, right=4, top=2, bottom=2});
    obj.excluirContato:setWidth(150);
    lfm_setPropAsString(obj.excluirContato, "fontStyle",  "bold");
    obj.excluirContato:setFontColor("red");

    obj.QuadradoImagem = GUI.fromHandle(_obj_newObject("layout"));
    obj.QuadradoImagem:setParent(obj.rectangle);
    obj.QuadradoImagem:setName("QuadradoImagem");
    obj.QuadradoImagem:setLeft(0);
    obj.QuadradoImagem:setTop(33.5);
    obj.QuadradoImagem:setWidth(136);
    obj.QuadradoImagem:setHeight(138);

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.QuadradoImagem);
    obj.image1:setSRC("/Imagens/quadradoImagem.png");
    obj.image1:setWidth(136);
    obj.image1:setHeight(138);
    obj.image1:setName("image1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.image1);
    obj.label2:setText("IMAGEM");
    obj.label2:setLeft(8);
    obj.label2:setTop(68);
    obj.label2:setAutoSize(true);
    obj.label2:setHorzTextAlign("center");
    obj.label2:setWordWrap(true);
    obj.label2:setMargins({top=0});
    obj.label2:setName("label2");

    obj.imagemQuadro = GUI.fromHandle(_obj_newObject("layout"));
    obj.imagemQuadro:setParent(obj.rectangle);
    obj.imagemQuadro:setName("imagemQuadro");
    obj.imagemQuadro:setAlign("top");
    obj.imagemQuadro:setHeight(130);

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.imagemQuadro);
    obj.image2:setAlign("left");
    obj.image2:setEditable(true);
    obj.image2:setField("campoURLImagem3");
    obj.image2:setWidth(130);
    obj.image2:setName("image2");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.imagemQuadro);
    obj.layout1:setAlign("client");
    obj.layout1:setMargins({left=2});
    obj.layout1:setName("layout1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setAlign("top");
    obj.edit2:setField("campoSubTitulo3");
    obj.edit2:setHeight(30);
    obj.edit2:setName("edit2");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setAlign("top");
    obj.textEditor1:setField("campoTextoGrande3");
    obj.textEditor1:setHeight(100);
    obj.textEditor1:setName("textEditor1");

    obj.anotacaoImagem = GUI.fromHandle(_obj_newObject("image"));
    obj.anotacaoImagem:setParent(obj.scrollBox1);
    obj.anotacaoImagem:setName("anotacaoImagem");
    obj.anotacaoImagem:setSRC("/Imagens/Contatos.png");
    obj.anotacaoImagem:setLeft(80);
    obj.anotacaoImagem:setTop(13.5);
    obj.anotacaoImagem:setHeight(80);
    obj.anotacaoImagem:setWidth(80);

    obj.listaDeContatos = GUI.fromHandle(_obj_newObject("button"));
    obj.listaDeContatos:setParent(obj.scrollBox1);
    obj.listaDeContatos:setName("listaDeContatos");
    obj.listaDeContatos:setText("Lista de contatos");
    obj.listaDeContatos:setWidth(130);
    obj.listaDeContatos:setHeight(30);
    obj.listaDeContatos:setLeft(60);
    obj.listaDeContatos:setTop(100);

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.scrollBox1);
    obj.richEdit2:setName("richEdit2");
    obj.richEdit2:setField("richEdit2");
    obj.richEdit2:setVisible(true);
    obj.richEdit2:setLeft(90);
    obj.richEdit2:setTop(160);
    obj.richEdit2:setWidth(1000);
    obj.richEdit2:setHeight(700);
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "black");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");

    obj.conteudoNovoAntigo = GUI.fromHandle(_obj_newObject("layout"));
    obj.conteudoNovoAntigo:setParent(obj.scrollBox1);
    obj.conteudoNovoAntigo:setName("conteudoNovoAntigo");
    obj.conteudoNovoAntigo:setLeft(1050);
    obj.conteudoNovoAntigo:setTop(50);
    obj.conteudoNovoAntigo:setWidth(131);
    obj.conteudoNovoAntigo:setHeight(62);

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.conteudoNovoAntigo);
    obj.button2:setText("Conteúdo novo");
    lfm_setPropAsString(obj.button2, "fontStyle",  "bold");
    obj.button2:setFontColor("black");
    obj.button2:setLeft(0);
    obj.button2:setTop(0);
    obj.button2:setWidth(113);
    obj.button2:setHeight(22);
    obj.button2:setName("button2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.conteudoNovoAntigo);
    obj.button3:setText("Conteúdo antigo");
    obj.button3:setFontColor("black");
    lfm_setPropAsString(obj.button3, "fontStyle",  "bold");
    obj.button3:setLeft(0);
    obj.button3:setTop(30);
    obj.button3:setWidth(120);
    obj.button3:setHeight(22);
    obj.button3:setName("button3");

    obj._e_event0 = obj.troca3:addEventListener("onMouseEnter",
        function (_)
            self.troca3.src = "/Imagens/vender_off.png"
        end, obj);

    obj._e_event1 = obj.troca3:addEventListener("onMouseLeave",
        function (_)
            self.troca3.src = "/Imagens/vender_on.png"
        end, obj);

    obj._e_event2 = obj.troca3:addEventListener("onClick",
        function (_)
            self.anotacaoPrincipal.visible = true;
                         self.textEditorAntigo.visible = true;
                         self.richEdit2.visible = true;
                         self.conteudoNovoAntigo.visible = true;
                         self.listaDeContatos.visible = true;
                         self.anotacaoImagem.visible = true;
                         self.AnotacaoTotal.visible = false
        end, obj);

    obj._e_event3 = obj.button1:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rclListaDosItens3:append();
        end, obj);

    obj._e_event4 = obj.rclListaDosItens3:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                              --]]                      
                              local node = self.rclListaDosItens3.selectedNode;  
                                     self.boxDetalhesDoItem3.node = node;                       
                              -- a caixa de detalhe só ficará visível se houver item selecionado
                                      self.boxDetalhesDoItem3.visible = (node ~= nil);
        end, obj);

    obj._e_event5 = obj.excluirContato:addEventListener("onDblClick",
        function (_)
            ndb.deleteNode(self.boxDetalhesDoItem3.node);
        end, obj);

    obj._e_event6 = obj.listaDeContatos:addEventListener("onClick",
        function (_)
            self.anotacaoPrincipal.visible = false;
                         self.textEditorAntigo.visible = false;
                         self.richEdit2.visible = false;
                         self.conteudoNovoAntigo.visible = false;
                         self.listaDeContatos.visible = false;
                         self.anotacaoImagem.visible = false;
                         self.AnotacaoTotal.visible = true
        end, obj);

    obj._e_event7 = obj.button2:addEventListener("onClick",
        function (_)
            self.Anotacao.visible = false;
                   self.richEdit2.visible = true
        end, obj);

    obj._e_event8 = obj.button3:addEventListener("onClick",
        function (_)
            self.Anotacao.visible = true;
                   self.richEdit2.visible = false
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
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

        if self.conteudoNovoAntigo ~= nil then self.conteudoNovoAntigo:destroy(); self.conteudoNovoAntigo = nil; end;
        if self.troca3 ~= nil then self.troca3:destroy(); self.troca3 = nil; end;
        if self.nomes ~= nil then self.nomes:destroy(); self.nomes = nil; end;
        if self.listaDeContatos ~= nil then self.listaDeContatos:destroy(); self.listaDeContatos = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.QuadradoImagem ~= nil then self.QuadradoImagem:destroy(); self.QuadradoImagem = nil; end;
        if self.boxDetalhesDoItem3 ~= nil then self.boxDetalhesDoItem3:destroy(); self.boxDetalhesDoItem3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rclListaDosItens3 ~= nil then self.rclListaDosItens3:destroy(); self.rclListaDosItens3 = nil; end;
        if self.anotacaoPrincipal ~= nil then self.anotacaoPrincipal:destroy(); self.anotacaoPrincipal = nil; end;
        if self.excluirContato ~= nil then self.excluirContato:destroy(); self.excluirContato = nil; end;
        if self.AnotacaoTotal ~= nil then self.AnotacaoTotal:destroy(); self.AnotacaoTotal = nil; end;
        if self.anotacaoImagem ~= nil then self.anotacaoImagem:destroy(); self.anotacaoImagem = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.textEditorAntigo ~= nil then self.textEditorAntigo:destroy(); self.textEditorAntigo = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.novoContato ~= nil then self.novoContato:destroy(); self.novoContato = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.Anotacao ~= nil then self.Anotacao:destroy(); self.Anotacao = nil; end;
        if self.rectangle ~= nil then self.rectangle:destroy(); self.rectangle = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.imagemQuadro ~= nil then self.imagemQuadro:destroy(); self.imagemQuadro = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmDesbravadores2_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmDesbravadores2_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmDesbravadores2_svg = {
    newEditor = newfrmDesbravadores2_svg, 
    new = newfrmDesbravadores2_svg, 
    name = "frmDesbravadores2_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmDesbravadores2_svg = _frmDesbravadores2_svg;
Firecast.registrarForm(_frmDesbravadores2_svg);

return _frmDesbravadores2_svg;
