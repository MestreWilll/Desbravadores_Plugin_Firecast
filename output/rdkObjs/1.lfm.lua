require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmDesbravadores23_svg()
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
    obj:setName("frmDesbravadores23_svg");
    obj:setAlign("client");

    obj.Pag2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.Pag2:setParent(obj);
    obj.Pag2:setName("Pag2");
    obj.Pag2:setAlign("client");
    obj.Pag2:setVisible(false);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.Pag2);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(0);
    obj.rectangle1:setTop(0);
    obj.rectangle1:setWidth(600);
    obj.rectangle1:setHeight(601);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setXradius(25);
    obj.rectangle1:setYradius(25);
    obj.rectangle1:setCornerType("round");
    obj.rectangle1:setName("rectangle1");

    obj.labSoma3 = GUI.fromHandle(_obj_newObject("label"));
    obj.labSoma3:setParent(obj.rectangle1);
    obj.labSoma3:setFontSize(28);
    obj.labSoma3:setFontColor("lime");
    lfm_setPropAsString(obj.labSoma3, "fontStyle",  "bold");
    obj.labSoma3:setLeft(346);
    obj.labSoma3:setTop(0);
    obj.labSoma3:setWidth(205);
    obj.labSoma3:setHeight(45);
    obj.labSoma3:setName("labSoma3");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.labSoma3);
    obj.dataLink1:setField("Soma");
    obj.dataLink1:setName("dataLink1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setSRC("/Imagens/layoutDinheiro.png");
    obj.image1:setLeft(280);
    obj.image1:setTop(-2);
    obj.image1:setWidth(213);
    obj.image1:setHeight(56);
    obj.image1:setName("image1");

    obj.troca = GUI.fromHandle(_obj_newObject("image"));
    obj.troca:setParent(obj.rectangle1);
    obj.troca:setHitTest(true);
    obj.troca:setCursor("handPoint");
    obj.troca:setLeft(537);
    obj.troca:setTop(-2);
    obj.troca:setWidth(63);
    obj.troca:setHeight(60);
    obj.troca:setName("troca");
    obj.troca:setSRC("/Imagens/vender_on.png");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(600);
    obj.layout1:setHeight(600);
    obj.layout1:setFrameStyle("/frames/frame2.xml");
    obj.layout1:setMargins({left=10, top=10, right=10, bottom=10});
    obj.layout1:setName("layout1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setAlign("client");
    obj.layout2:setFrameStyle("/frames/frame1.xml");
    obj.layout2:setMargins({left=10, top=10, right=10, bottom=10});
    obj.layout2:setName("layout2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(30);
    obj.layout3:setMargins({bottom=4});
    obj.layout3:setName("layout3");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout3);
    obj.button1:setText("Criar Novo Item");
    obj.button1:setWidth(150);
    obj.button1:setAlign("left");
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");
    obj.button1:setName("button1");

    obj.rclListaDosItens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.layout1);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmItemDaLista");
    obj.rclListaDosItens:setAlign("client");
    obj.rclListaDosItens:setSelectable(true);

    obj.boxDetalhesDoItem = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.layout1);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setAlign("right");
    obj.boxDetalhesDoItem:setWidth(400);
    obj.boxDetalhesDoItem:setMargins({left=4, right=4});

    obj.testeee = GUI.fromHandle(_obj_newObject("button"));
    obj.testeee:setParent(obj.boxDetalhesDoItem);
    obj.testeee:setName("testeee");
    obj.testeee:setText("debugDin");
    obj.testeee:setLeft(200);
    obj.testeee:setTop(300);

    obj.Venda = GUI.fromHandle(_obj_newObject("image"));
    obj.Venda:setParent(obj.boxDetalhesDoItem);
    obj.Venda:setName("Venda");
    obj.Venda:setSRC("/Imagens/vendaItens.png");
    obj.Venda:setLeft(222);
    obj.Venda:setTop(165);
    obj.Venda:setWidth(134);
    obj.Venda:setHeight(106);
    obj.Venda:setVisible(true);

    obj.naoVende = GUI.fromHandle(_obj_newObject("image"));
    obj.naoVende:setParent(obj.boxDetalhesDoItem);
    obj.naoVende:setName("naoVende");
    obj.naoVende:setSRC("/Imagens/impossivelVende.png");
    obj.naoVende:setLeft(222);
    obj.naoVende:setTop(165);
    obj.naoVende:setWidth(134);
    obj.naoVende:setHeight(106);
    obj.naoVende:setVisible(false);

    obj.mercadoNegro = GUI.fromHandle(_obj_newObject("image"));
    obj.mercadoNegro:setParent(obj.boxDetalhesDoItem);
    obj.mercadoNegro:setName("mercadoNegro");
    obj.mercadoNegro:setSRC("/Imagens/mercadoNegro.png");
    obj.mercadoNegro:setLeft(222);
    obj.mercadoNegro:setTop(165);
    obj.mercadoNegro:setWidth(134);
    obj.mercadoNegro:setHeight(106);
    obj.mercadoNegro:setVisible(false);

    obj.dinheiro = GUI.fromHandle(_obj_newObject("label"));
    obj.dinheiro:setParent(obj.boxDetalhesDoItem);
    obj.dinheiro:setName("dinheiro");
    obj.dinheiro:setLeft(246);
    obj.dinheiro:setTop(183);
    obj.dinheiro:setWidth(82);
    obj.dinheiro:setHeight(26);
    obj.dinheiro:setFontSize(20);
    obj.dinheiro:setFontColor("black");
    lfm_setPropAsString(obj.dinheiro, "fontStyle",  "bold");
    obj.dinheiro:setField("custo");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.boxDetalhesDoItem);
    obj.image2:setSRC("/Imagens/nivelDoitem.png");
    obj.image2:setLeft(180);
    obj.image2:setTop(364);
    obj.image2:setWidth(205);
    obj.image2:setHeight(30);
    obj.image2:setVisible(true);
    obj.image2:setName("image2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.boxDetalhesDoItem);
    obj.label1:setField("nivelItem");
    obj.label1:setHitTest(true);
    obj.label1:setFontSize(23);
    obj.label1:setFontColor("red");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setLeft(375);
    obj.label1:setTop(367);
    obj.label1:setName("label1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.boxDetalhesDoItem);
    obj.dataLink2:setField("nivelItem");
    obj.dataLink2:setName("dataLink2");

    obj.colocarDinheiro = GUI.fromHandle(_obj_newObject("button"));
    obj.colocarDinheiro:setParent(obj.boxDetalhesDoItem);
    obj.colocarDinheiro:setText("$");
    obj.colocarDinheiro:setName("colocarDinheiro");
    obj.colocarDinheiro:setFontColor("yellow");
    lfm_setPropAsString(obj.colocarDinheiro, "fontStyle",  "bold");
    obj.colocarDinheiro:setFontSize(25);
    obj.colocarDinheiro:setLeft(215);
    obj.colocarDinheiro:setTop(182);
    obj.colocarDinheiro:setWidth(27);
    obj.colocarDinheiro:setHeight(25);

    obj.botaoDeVenda = GUI.fromHandle(_obj_newObject("image"));
    obj.botaoDeVenda:setParent(obj.boxDetalhesDoItem);
    obj.botaoDeVenda:setName("botaoDeVenda");
    obj.botaoDeVenda:setSRC("/Imagens/vendeItem2.png");
    obj.botaoDeVenda:setLeft(237);
    obj.botaoDeVenda:setTop(209);
    obj.botaoDeVenda:setWidth(96);
    obj.botaoDeVenda:setOpacity(1);
    obj.botaoDeVenda:setHeight(21);
    obj.botaoDeVenda:setHitTest(true);
    obj.botaoDeVenda:setCursor("handPoint");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.boxDetalhesDoItem);
    obj.rectangle2:setAlign("top");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setHeight(180);
    obj.rectangle2:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle2:setName("rectangle2");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle2);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(30);
    obj.layout4:setMargins({bottom=4});
    obj.layout4:setName("layout4");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout4);
    obj.label2:setAlign("left");
    obj.label2:setText("Nome do Item:");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout4);
    obj.edit1:setAlign("client");
    obj.edit1:setField("campoTitulo");
    obj.edit1:setName("edit1");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle2);
    obj.label3:setText("Clique aqui para colocar imagem");
    obj.label3:setLeft(8);
    obj.label3:setTop(68);
    obj.label3:setAutoSize(true);
    obj.label3:setHorzTextAlign("center");
    obj.label3:setWordWrap(true);
    obj.label3:setName("label3");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle2);
    obj.image3:setSRC("/Imagens/quadradoImagem.png");
    obj.image3:setLeft(0.5);
    obj.image3:setTop(33);
    obj.image3:setWidth(134);
    obj.image3:setHeight(138);
    obj.image3:setName("image3");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle2);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(131.5);
    obj.layout5:setName("layout5");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.layout5);
    obj.image4:setAlign("left");
    obj.image4:setEditable(true);
    obj.image4:setField("campoURLImagem");
    obj.image4:setWidth(130);
    obj.image4:setHeight(130);
    obj.image4:setMargins({top=-20});
    obj.image4:setName("image4");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setAlign("client");
    obj.layout6:setMargins({left=2});
    obj.layout6:setName("layout6");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout6);
    obj.edit2:setAlign("top");
    obj.edit2:setField("campoSubTitulo");
    obj.edit2:setHeight(30);
    obj.edit2:setName("edit2");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout6);
    obj.textEditor1:setAlign("top");
    obj.textEditor1:setField("campoTextoGrande");
    obj.textEditor1:setHeight(100);
    obj.textEditor1:setName("textEditor1");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle1);
    obj.textEditor2:setLeft(198);
    obj.textEditor2:setTop(250);
    obj.textEditor2:setWidth(193);
    obj.textEditor2:setHeight(347);
    obj.textEditor2:setReadOnly(true);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setFontFamily("Meiryo UI");
    obj.textEditor2:setText("➢ (Armas)\n\n✪ (Equipáveis; Armaduras)\n\n✶ (Itens Comuns)\n\n✸ (Itens Mágicos)\n\n☌ (Poções)\n\n✉ (Livros; Pergaminhos; Cartas)\n\n♕ (Tesouros; Raros)\n\n♘ (Pet)");
    obj.textEditor2:setName("textEditor2");

    obj.DragaoDeArmadura = GUI.fromHandle(_obj_newObject("image"));
    obj.DragaoDeArmadura:setParent(obj.rectangle1);
    lfm_setPropAsString(obj.DragaoDeArmadura, "animate",  "true");
    obj.DragaoDeArmadura:setName("DragaoDeArmadura");
    obj.DragaoDeArmadura:setLeft(240);
    obj.DragaoDeArmadura:setTop(310);
    obj.DragaoDeArmadura:setWidth(405);
    obj.DragaoDeArmadura:setHeight(370);
    obj.DragaoDeArmadura:setSRC("/Gif/dragãoArmadura.gif");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle1);
    obj.image5:setSRC("/Imagens/gramaImagem.png");
    obj.image5:setLeft(175);
    obj.image5:setTop(520);
    obj.image5:setWidth(434);
    obj.image5:setHeight(79);
    obj.image5:setName("image5");

    obj.Massacote = GUI.fromHandle(_obj_newObject("layout"));
    obj.Massacote:setParent(obj);
    obj.Massacote:setName("Massacote");
    obj.Massacote:setAlign("client");
    obj.Massacote:setVisible(false);

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.Massacote);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.scrollBox2);
    obj.button2:setText("ANTIGO");
    lfm_setPropAsString(obj.button2, "fontStyle",  "bold");
    obj.button2:setWidth(61);
    obj.button2:setHeight(23);
    obj.button2:setFontColor("yellow");
    obj.button2:setLeft(173);
    obj.button2:setName("button2");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.scrollBox2);
    obj.image6:setHitTest(true);
    obj.image6:setCursor("handPoint");
    obj.image6:setLeft(548);
    obj.image6:setTop(0);
    obj.image6:setWidth(100);
    obj.image6:setHeight(100);
    obj.image6:setSRC("/Imagens/voltar.png");
    obj.image6:setName("image6");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.scrollBox2);
    obj.button3:setText("Adicione seu Mascote");
    lfm_setPropAsString(obj.button3, "fontStyle",  "bold");
    obj.button3:setFontColor("black");
    obj.button3:setWidth(166);
    obj.button3:setHeight(23);
    obj.button3:setLeft(0);
    obj.button3:setTop(0);
    obj.button3:setName("button3");

    obj.rclMascote = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMascote:setParent(obj.scrollBox2);
    obj.rclMascote:setName("rclMascote");
    obj.rclMascote:setField("Mascote");
    obj.rclMascote:setTemplateForm("frmMassacote");
    obj.rclMascote:setLeft(0);
    obj.rclMascote:setTop(25);
    obj.rclMascote:setWidth(535);
    obj.rclMascote:setHeight(800);
    obj.rclMascote:setSelectable(true);

    obj.boxDetalhesDoItem33 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem33:setParent(obj.scrollBox2);
    obj.boxDetalhesDoItem33:setName("boxDetalhesDoItem33");
    obj.boxDetalhesDoItem33:setVisible(true);
    obj.boxDetalhesDoItem33:setAlign("right");
    obj.boxDetalhesDoItem33:setWidth(400);
    obj.boxDetalhesDoItem33:setMargins({left=4, right=4});

    obj.Pag3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.Pag3:setParent(obj);
    obj.Pag3:setName("Pag3");
    obj.Pag3:setAlign("client");
    obj.Pag3:setVisible(false);

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.Pag3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.scrollBox3);
    obj.image7:setHitTest(true);
    obj.image7:setCursor("handPoint");
    obj.image7:setLeft(500);
    obj.image7:setTop(12);
    obj.image7:setWidth(100);
    obj.image7:setHeight(100);
    obj.image7:setSRC("/Imagens/voltar.png");
    obj.image7:setName("image7");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox3);
    obj.layout7:setTop(715);
    obj.layout7:setWidth(475);
    obj.layout7:setHeight(300);
    obj.layout7:setName("layout7");

    obj.rclLista = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclLista:setParent(obj.layout7);
    obj.rclLista:setName("rclLista");
    obj.rclLista:setAlign("client");
    obj.rclLista:setField("itens");
    obj.rclLista:setTemplateForm("frmItem");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.scrollBox3);
    obj.button4:setLeft(0);
    obj.button4:setWidth(150);
    obj.button4:setHeight(35);
    obj.button4:setTop(680);
    obj.button4:setText("Criar habilidade nova");
    obj.button4:setName("button4");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.scrollBox3);
    obj.image8:setField("imagemDoPersonagem");
    obj.image8:setEditable(true);
    obj.image8:setStyle("autoFit");
    obj.image8:setLeft(20);
    obj.image8:setTop(20);
    obj.image8:setWidth(200);
    obj.image8:setHeight(200);
    obj.image8:setName("image8");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.scrollBox3);
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(550);
    obj.textEditor3:setWidth(455);
    obj.textEditor3:setHeight(120);
    obj.textEditor3:setField("Mascote11");
    obj.textEditor3:setText("ESCREVA AQUI: ANOTAÇõES OU COISAS IMPORTANTES SOBRE O SEU MASCOTE\n\n --A P A G U E      E S S A       M E N S A G E M-- ");
    obj.textEditor3:setName("textEditor3");


                local function exibirMensagem()
                        local msg = "";
                       
                        for i = 1, 5, 1 do
                                msg = msg .. "Linha " .. i .. "\n";
                        end;
                       
                        showMessage("Aqui fica a area de anotação do seu mascote. Como visto, um pouco acima está seus atributos");
                end;
        


    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.scrollBox3);
    obj.button5:setText("?");
    obj.button5:setWidth(35);
    obj.button5:setLeft(390);
    obj.button5:setTop(525);
    obj.button5:setName("button5");


                local function exibirMensagem2()
                        local msg = "";
                       
                        for i = 1, 5, 1 do
                                msg = msg .. "Linha " .. i .. "\n";
                        end;
                       
                        showMessage("Aqui você pode criar uma habilidade para o seu mascote, de acordo com sua raça, talvez ele irá precisar treinar sua habildade para pode executa-la, -Qualquer coisa fala com o mestre Ó mané-");
                end;
        


    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.scrollBox3);
    obj.button6:setText("?");
    obj.button6:setWidth(35);
    obj.button6:setLeft(395);
    obj.button6:setTop(680);
    obj.button6:setName("button6");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox3);
    obj.layout8:setTop(230);
    obj.layout8:setWidth(475);
    obj.layout8:setHeight(300);
    obj.layout8:setName("layout8");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout8);
    obj.label4:setText(" Força");
    obj.label4:setAlign("top");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setName("label4");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout8);
    obj.edit3:setField("1");
    obj.edit3:setAlign("top");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setName("edit3");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout8);
    obj.label5:setText(" Habilidade");
    obj.label5:setAlign("top");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout8);
    obj.edit4:setField("2");
    obj.edit4:setAlign("top");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setName("edit4");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout8);
    obj.label6:setText(" Inteligência");
    obj.label6:setAlign("top");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout8);
    obj.edit5:setField("3");
    obj.edit5:setAlign("top");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setName("edit5");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout8);
    obj.label7:setText(" Vigor");
    obj.label7:setAlign("top");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout8);
    obj.edit6:setField("4");
    obj.edit6:setAlign("top");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setName("edit6");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout8);
    obj.label8:setText(" Percepção");
    obj.label8:setAlign("top");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout8);
    obj.edit7:setField("5");
    obj.edit7:setAlign("top");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setName("edit7");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout8);
    obj.label9:setText(" Sorte");
    obj.label9:setAlign("top");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setField("6");
    obj.edit8:setAlign("top");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox3);
    obj.layout9:setTop(10);
    obj.layout9:setLeft(224);
    obj.layout9:setWidth(250);
    obj.layout9:setHeight(310);
    obj.layout9:setName("layout9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout9);
    obj.label10:setText(" Nome");
    obj.label10:setAlign("top");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setField("7");
    obj.edit9:setAlign("top");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setName("edit9");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout9);
    obj.label11:setText(" Idade");
    obj.label11:setAlign("top");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout9);
    obj.edit10:setField("8");
    obj.edit10:setAlign("top");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setName("edit10");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout9);
    obj.label12:setText(" Raça");
    obj.label12:setAlign("top");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setName("label12");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout9);
    obj.edit11:setField("9");
    obj.edit11:setAlign("top");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setName("edit11");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout9);
    obj.label13:setText(" Nivel");
    obj.label13:setAlign("top");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setName("label13");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout9);
    obj.edit12:setField("10");
    obj.edit12:setAlign("top");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setName("edit12");

    obj.Pag1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.Pag1:setParent(obj);
    obj.Pag1:setAlign("client");
    obj.Pag1:setName("Pag1");
    obj.Pag1:setVisible(false);

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.Pag1);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.scrollBox4);
    obj.image9:setSRC("/Imagens/Skill.png");
    obj.image9:setLeft(0);
    obj.image9:setTop(0);
    obj.image9:setWidth(746);
    obj.image9:setHeight(566);
    obj.image9:setName("image9");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.scrollBox4);
    lfm_setPropAsString(obj.image10, "animate",  "true");
    obj.image10:setSRC("/Gif/Deuses1.gif");
    obj.image10:setLeft(506.75);
    obj.image10:setTop(293);
    obj.image10:setWidth(171);
    obj.image10:setHeight(125);
    obj.image10:setName("image10");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.scrollBox4);
    obj.image11:setSRC("/Icones/Skill/SkillBanner.png");
    obj.image11:setLeft(220);
    obj.image11:setTop(73);
    obj.image11:setWidth(455);
    obj.image11:setHeight(112);
    obj.image11:setName("image11");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.scrollBox4);
    obj.image12:setSRC("/Imagens/volta.png");
    obj.image12:setLeft(70);
    obj.image12:setTop(65);
    obj.image12:setWidth(144);
    obj.image12:setHeight(120);
    obj.image12:setHitTest(true);
    obj.image12:setCursor("handPoint");
    obj.image12:setName("image12");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox4);
    obj.layout10:setAlign("top");
    obj.layout10:setHeight(250);
    obj.layout10:setMargins({bottom=50});
    obj.layout10:setName("layout10");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.layout10);
    obj.button7:setText("ADD Skill");
    lfm_setPropAsString(obj.button7, "fontStyle",  "bold");
    obj.button7:setFontColor("black");
    obj.button7:setLeft(224);
    obj.button7:setTop(159);
    obj.button7:setName("button7");

    obj.rclMagias = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias:setParent(obj.scrollBox4);
    obj.rclMagias:setName("rclMagias");
    obj.rclMagias:setField("magias");
    obj.rclMagias:setTemplateForm("frmItemDeMagia");
    obj.rclMagias:setLeft(66.50);
    obj.rclMagias:setTop(202);
    obj.rclMagias:setWidth(441);
    obj.rclMagias:setHeight(313);
    obj.rclMagias:setSelectable(true);

    obj.boxDetalhesDoItem2 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem2:setParent(obj.scrollBox4);
    obj.boxDetalhesDoItem2:setName("boxDetalhesDoItem2");
    obj.boxDetalhesDoItem2:setVisible(true);
    obj.boxDetalhesDoItem2:setAlign("right");
    obj.boxDetalhesDoItem2:setWidth(400);
    obj.boxDetalhesDoItem2:setMargins({left=4, right=4});

    obj.fichaPrincipal = GUI.fromHandle(_obj_newObject("layout"));
    obj.fichaPrincipal:setParent(obj);
    obj.fichaPrincipal:setName("fichaPrincipal");
    obj.fichaPrincipal:setLeft(-30);
    obj.fichaPrincipal:setTop(-15);
    obj.fichaPrincipal:setWidth(1263);
    obj.fichaPrincipal:setHeight(893);

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.fichaPrincipal);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.Im1 = GUI.fromHandle(_obj_newObject("image"));
    obj.Im1:setParent(obj.scrollBox5);
    obj.Im1:setName("Im1");
    obj.Im1:setLeft(0);
    obj.Im1:setTop(0);
    obj.Im1:setWidth(1263);
    obj.Im1:setHeight(893);
    obj.Im1:setSRC("/images/1.png");
    obj.Im1:setStyle("stretch");
    obj.Im1:setOptimize(true);

    obj.ed2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed2:setParent(obj.scrollBox5);
    obj.ed2:setName("ed2");
    obj.ed2:setLeft(420);
    obj.ed2:setTop(98);
    obj.ed2:setWidth(382);
    obj.ed2:setHeight(43);

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.ed2);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(18);
    obj.edit13:setFontColor("#000000");
    obj.edit13:setHorzTextAlign("leading");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(382);
    obj.edit13:setHeight(44);
    obj.edit13:setField("Nome");
    obj.edit13:setName("edit13");

    obj.ed1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed1:setParent(obj.scrollBox5);
    obj.ed1:setName("ed1");
    obj.ed1:setLeft(889);
    obj.ed1:setTop(96);
    obj.ed1:setWidth(216);
    obj.ed1:setHeight(44);

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.ed1);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(18);
    obj.edit14:setFontColor("#000000");
    obj.edit14:setHorzTextAlign("leading");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(216);
    obj.edit14:setHeight(45);
    obj.edit14:setField("Idade");
    obj.edit14:setName("edit14");

    obj.ed3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed3:setParent(obj.scrollBox5);
    obj.ed3:setName("ed3");
    obj.ed3:setLeft(501);
    obj.ed3:setTop(146);
    obj.ed3:setWidth(301);
    obj.ed3:setHeight(44);

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.ed3);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(18);
    obj.edit15:setFontColor("#000000");
    obj.edit15:setHorzTextAlign("leading");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(301);
    obj.edit15:setHeight(45);
    obj.edit15:setField("Comportamento");
    obj.edit15:setName("edit15");

    obj.ed5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed5:setParent(obj.scrollBox5);
    obj.ed5:setName("ed5");
    obj.ed5:setLeft(416);
    obj.ed5:setTop(200);
    obj.ed5:setWidth(249);
    obj.ed5:setHeight(44);

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.ed5);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(18);
    obj.edit16:setFontColor("#000000");
    obj.edit16:setHorzTextAlign("leading");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(249);
    obj.edit16:setHeight(45);
    obj.edit16:setField("Raça");
    obj.edit16:setName("edit16");

    obj.ed6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed6:setParent(obj.scrollBox5);
    obj.ed6:setName("ed6");
    obj.ed6:setLeft(757);
    obj.ed6:setTop(200);
    obj.ed6:setWidth(352);
    obj.ed6:setHeight(46);

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.ed6);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(18);
    obj.edit17:setFontColor("#000000");
    obj.edit17:setHorzTextAlign("leading");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(352);
    obj.edit17:setHeight(47);
    obj.edit17:setField("Classe");
    obj.edit17:setName("edit17");

    obj.ed7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed7:setParent(obj.scrollBox5);
    obj.ed7:setName("ed7");
    obj.ed7:setLeft(448);
    obj.ed7:setTop(245);
    obj.ed7:setWidth(247);
    obj.ed7:setHeight(46);

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.ed7);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(18);
    obj.edit18:setFontColor("#000000");
    obj.edit18:setHorzTextAlign("leading");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(247);
    obj.edit18:setHeight(47);
    obj.edit18:setField("Elemento");
    obj.edit18:setName("edit18");

    obj.ed8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed8:setParent(obj.scrollBox5);
    obj.ed8:setName("ed8");
    obj.ed8:setLeft(823);
    obj.ed8:setTop(247);
    obj.ed8:setWidth(284);
    obj.ed8:setHeight(43);

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.ed8);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(18);
    obj.edit19:setFontColor("#000000");
    obj.edit19:setHorzTextAlign("leading");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(284);
    obj.edit19:setHeight(44);
    obj.edit19:setField("Cidade_Natal");
    obj.edit19:setName("edit19");

    obj.ed14Forca = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed14Forca:setParent(obj.scrollBox5);
    obj.ed14Forca:setName("ed14Forca");
    obj.ed14Forca:setLeft(430);
    obj.ed14Forca:setTop(318);
    obj.ed14Forca:setWidth(128);
    obj.ed14Forca:setHeight(43);

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.ed14Forca);
    obj.label14:setFontSize(18);
    obj.label14:setFontColor("black");
    obj.label14:setHorzTextAlign("leading");
    obj.label14:setVertTextAlign("center");
    obj.label14:setLeft(0);
    obj.label14:setTop(0);
    obj.label14:setWidth(128);
    obj.label14:setHeight(44);
    obj.label14:setField("parcela1");
    obj.label14:setName("label14");

    obj.ed15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed15:setParent(obj.scrollBox5);
    obj.ed15:setName("ed15");
    obj.ed15:setLeft(562);
    obj.ed15:setTop(318);
    obj.ed15:setWidth(53);
    obj.ed15:setHeight(43);

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.ed15);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(18);
    obj.edit20:setFontColor("#000000");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(53);
    obj.edit20:setHeight(44);
    obj.edit20:setField("parcela2");
    obj.edit20:setName("edit20");

    obj.ed10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed10:setParent(obj.scrollBox5);
    obj.ed10:setName("ed10");
    obj.ed10:setLeft(619);
    obj.ed10:setTop(317);
    obj.ed10:setWidth(53);
    obj.ed10:setHeight(43);

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.ed10);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(18);
    obj.edit21:setFontColor("#000000");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(53);
    obj.edit21:setHeight(44);
    obj.edit21:setField("parcela3");
    obj.edit21:setName("edit21");

    obj.ed11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed11:setParent(obj.scrollBox5);
    obj.ed11:setName("ed11");
    obj.ed11:setLeft(677);
    obj.ed11:setTop(317);
    obj.ed11:setWidth(53);
    obj.ed11:setHeight(43);

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.ed11);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(18);
    obj.edit22:setFontColor("#000000");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(53);
    obj.edit22:setHeight(44);
    obj.edit22:setField("parcela4");
    obj.edit22:setName("edit22");

    obj.ed16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed16:setParent(obj.scrollBox5);
    obj.ed16:setName("ed16");
    obj.ed16:setLeft(734);
    obj.ed16:setTop(318);
    obj.ed16:setWidth(53);
    obj.ed16:setHeight(43);

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.ed16);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(18);
    obj.edit23:setFontColor("#000000");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(53);
    obj.edit23:setHeight(44);
    obj.edit23:setField("parcela5");
    obj.edit23:setName("edit23");

    obj.ed17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed17:setParent(obj.scrollBox5);
    obj.ed17:setName("ed17");
    obj.ed17:setLeft(789);
    obj.ed17:setTop(318);
    obj.ed17:setWidth(53);
    obj.ed17:setHeight(43);

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.ed17);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(18);
    obj.edit24:setFontColor("#000000");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(53);
    obj.edit24:setHeight(44);
    obj.edit24:setField("resultadoSoma");
    obj.edit24:setName("edit24");

    obj.ed20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed20:setParent(obj.scrollBox5);
    obj.ed20:setName("ed20");
    obj.ed20:setLeft(562);
    obj.ed20:setTop(369);
    obj.ed20:setWidth(53);
    obj.ed20:setHeight(43);

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.ed20);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(18);
    obj.edit25:setFontColor("#000000");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(53);
    obj.edit25:setHeight(44);
    obj.edit25:setField("parcela7");
    obj.edit25:setName("edit25");

    obj.ed18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed18:setParent(obj.scrollBox5);
    obj.ed18:setName("ed18");
    obj.ed18:setLeft(619);
    obj.ed18:setTop(368);
    obj.ed18:setWidth(53);
    obj.ed18:setHeight(43);

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.ed18);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(18);
    obj.edit26:setFontColor("#000000");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(53);
    obj.edit26:setHeight(44);
    obj.edit26:setField("parcela8");
    obj.edit26:setName("edit26");

    obj.ed19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed19:setParent(obj.scrollBox5);
    obj.ed19:setName("ed19");
    obj.ed19:setLeft(676);
    obj.ed19:setTop(368);
    obj.ed19:setWidth(53);
    obj.ed19:setHeight(43);

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.ed19);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(18);
    obj.edit27:setFontColor("#000000");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(53);
    obj.edit27:setHeight(44);
    obj.edit27:setField("parcela9");
    obj.edit27:setName("edit27");

    obj.ed21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed21:setParent(obj.scrollBox5);
    obj.ed21:setName("ed21");
    obj.ed21:setLeft(734);
    obj.ed21:setTop(369);
    obj.ed21:setWidth(53);
    obj.ed21:setHeight(43);

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.ed21);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(18);
    obj.edit28:setFontColor("#000000");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(53);
    obj.edit28:setHeight(44);
    obj.edit28:setField("parcela10");
    obj.edit28:setName("edit28");

    obj.ed22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed22:setParent(obj.scrollBox5);
    obj.ed22:setName("ed22");
    obj.ed22:setLeft(789);
    obj.ed22:setTop(369);
    obj.ed22:setWidth(53);
    obj.ed22:setHeight(43);

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.ed22);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(18);
    obj.edit29:setFontColor("#000000");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(53);
    obj.edit29:setHeight(44);
    obj.edit29:setField("resultadoSoma2");
    obj.edit29:setName("edit29");

    obj.ed27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed27:setParent(obj.scrollBox5);
    obj.ed27:setName("ed27");
    obj.ed27:setLeft(561);
    obj.ed27:setTop(421);
    obj.ed27:setWidth(53);
    obj.ed27:setHeight(43);

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.ed27);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(18);
    obj.edit30:setFontColor("#000000");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(53);
    obj.edit30:setHeight(44);
    obj.edit30:setField("parcela12");
    obj.edit30:setName("edit30");

    obj.ed25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed25:setParent(obj.scrollBox5);
    obj.ed25:setName("ed25");
    obj.ed25:setLeft(619);
    obj.ed25:setTop(420);
    obj.ed25:setWidth(53);
    obj.ed25:setHeight(43);

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.ed25);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(18);
    obj.edit31:setFontColor("#000000");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(53);
    obj.edit31:setHeight(44);
    obj.edit31:setField("parcela13");
    obj.edit31:setName("edit31");

    obj.ed26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed26:setParent(obj.scrollBox5);
    obj.ed26:setName("ed26");
    obj.ed26:setLeft(677);
    obj.ed26:setTop(420);
    obj.ed26:setWidth(53);
    obj.ed26:setHeight(43);

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.ed26);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(18);
    obj.edit32:setFontColor("#000000");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(53);
    obj.edit32:setHeight(44);
    obj.edit32:setField("parcela14");
    obj.edit32:setName("edit32");

    obj.ed28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed28:setParent(obj.scrollBox5);
    obj.ed28:setName("ed28");
    obj.ed28:setLeft(734);
    obj.ed28:setTop(421);
    obj.ed28:setWidth(53);
    obj.ed28:setHeight(43);

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.ed28);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(18);
    obj.edit33:setFontColor("#000000");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(53);
    obj.edit33:setHeight(44);
    obj.edit33:setField("parcela15");
    obj.edit33:setName("edit33");

    obj.ed29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed29:setParent(obj.scrollBox5);
    obj.ed29:setName("ed29");
    obj.ed29:setLeft(789);
    obj.ed29:setTop(421);
    obj.ed29:setWidth(53);
    obj.ed29:setHeight(43);

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.ed29);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(18);
    obj.edit34:setFontColor("#000000");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(53);
    obj.edit34:setHeight(44);
    obj.edit34:setField("resultadoSoma3");
    obj.edit34:setName("edit34");

    obj.ed33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed33:setParent(obj.scrollBox5);
    obj.ed33:setName("ed33");
    obj.ed33:setLeft(562);
    obj.ed33:setTop(472);
    obj.ed33:setWidth(53);
    obj.ed33:setHeight(43);

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.ed33);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(18);
    obj.edit35:setFontColor("#000000");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(53);
    obj.edit35:setHeight(44);
    obj.edit35:setField("parcela17");
    obj.edit35:setName("edit35");

    obj.ed30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed30:setParent(obj.scrollBox5);
    obj.ed30:setName("ed30");
    obj.ed30:setLeft(619);
    obj.ed30:setTop(471);
    obj.ed30:setWidth(53);
    obj.ed30:setHeight(43);

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.ed30);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(18);
    obj.edit36:setFontColor("#000000");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(53);
    obj.edit36:setHeight(44);
    obj.edit36:setField("parcela18");
    obj.edit36:setName("edit36");

    obj.ed31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed31:setParent(obj.scrollBox5);
    obj.ed31:setName("ed31");
    obj.ed31:setLeft(676);
    obj.ed31:setTop(471);
    obj.ed31:setWidth(53);
    obj.ed31:setHeight(43);

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.ed31);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(18);
    obj.edit37:setFontColor("#000000");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(53);
    obj.edit37:setHeight(44);
    obj.edit37:setField("parcela19");
    obj.edit37:setName("edit37");

    obj.ed34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed34:setParent(obj.scrollBox5);
    obj.ed34:setName("ed34");
    obj.ed34:setLeft(734);
    obj.ed34:setTop(472);
    obj.ed34:setWidth(53);
    obj.ed34:setHeight(43);

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.ed34);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(18);
    obj.edit38:setFontColor("#000000");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(53);
    obj.edit38:setHeight(44);
    obj.edit38:setField("parcela20");
    obj.edit38:setName("edit38");

    obj.ed35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed35:setParent(obj.scrollBox5);
    obj.ed35:setName("ed35");
    obj.ed35:setLeft(789);
    obj.ed35:setTop(472);
    obj.ed35:setWidth(53);
    obj.ed35:setHeight(43);

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.ed35);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(18);
    obj.edit39:setFontColor("#000000");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(53);
    obj.edit39:setHeight(44);
    obj.edit39:setField("resultadoSoma4");
    obj.edit39:setName("edit39");

    obj.ed37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed37:setParent(obj.scrollBox5);
    obj.ed37:setName("ed37");
    obj.ed37:setLeft(562);
    obj.ed37:setTop(520);
    obj.ed37:setWidth(53);
    obj.ed37:setHeight(43);

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.ed37);
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(18);
    obj.edit40:setFontColor("#000000");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(53);
    obj.edit40:setHeight(44);
    obj.edit40:setField("parcela22");
    obj.edit40:setName("edit40");

    obj.ed36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed36:setParent(obj.scrollBox5);
    obj.ed36:setName("ed36");
    obj.ed36:setLeft(619);
    obj.ed36:setTop(519);
    obj.ed36:setWidth(53);
    obj.ed36:setHeight(43);

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.ed36);
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(18);
    obj.edit41:setFontColor("#000000");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(53);
    obj.edit41:setHeight(44);
    obj.edit41:setField("parcela23");
    obj.edit41:setName("edit41");

    obj.ed38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed38:setParent(obj.scrollBox5);
    obj.ed38:setName("ed38");
    obj.ed38:setLeft(678);
    obj.ed38:setTop(520);
    obj.ed38:setWidth(53);
    obj.ed38:setHeight(43);

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.ed38);
    obj.edit42:setTransparent(true);
    obj.edit42:setFontSize(18);
    obj.edit42:setFontColor("#000000");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(53);
    obj.edit42:setHeight(44);
    obj.edit42:setField("parcela24");
    obj.edit42:setName("edit42");

    obj.ed40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed40:setParent(obj.scrollBox5);
    obj.ed40:setName("ed40");
    obj.ed40:setLeft(789);
    obj.ed40:setTop(520);
    obj.ed40:setWidth(53);
    obj.ed40:setHeight(43);

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.ed40);
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(18);
    obj.edit43:setFontColor("#000000");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setLeft(0);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(53);
    obj.edit43:setHeight(44);
    obj.edit43:setField("resultadoSoma5");
    obj.edit43:setName("edit43");

    obj.ed44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed44:setParent(obj.scrollBox5);
    obj.ed44:setName("ed44");
    obj.ed44:setLeft(562);
    obj.ed44:setTop(571);
    obj.ed44:setWidth(53);
    obj.ed44:setHeight(43);

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.ed44);
    obj.edit44:setTransparent(true);
    obj.edit44:setFontSize(18);
    obj.edit44:setFontColor("#000000");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(53);
    obj.edit44:setHeight(44);
    obj.edit44:setField("parcela27");
    obj.edit44:setName("edit44");

    obj.ed42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed42:setParent(obj.scrollBox5);
    obj.ed42:setName("ed42");
    obj.ed42:setLeft(619);
    obj.ed42:setTop(570);
    obj.ed42:setWidth(53);
    obj.ed42:setHeight(43);

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.ed42);
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(18);
    obj.edit45:setFontColor("#000000");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setLeft(0);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(53);
    obj.edit45:setHeight(44);
    obj.edit45:setField("parcela28");
    obj.edit45:setName("edit45");

    obj.ed43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed43:setParent(obj.scrollBox5);
    obj.ed43:setName("ed43");
    obj.ed43:setLeft(676);
    obj.ed43:setTop(570);
    obj.ed43:setWidth(53);
    obj.ed43:setHeight(43);

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.ed43);
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(18);
    obj.edit46:setFontColor("#000000");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setLeft(0);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(53);
    obj.edit46:setHeight(44);
    obj.edit46:setField("parcela29");
    obj.edit46:setName("edit46");

    obj.ed45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed45:setParent(obj.scrollBox5);
    obj.ed45:setName("ed45");
    obj.ed45:setLeft(734);
    obj.ed45:setTop(571);
    obj.ed45:setWidth(53);
    obj.ed45:setHeight(43);

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.ed45);
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(18);
    obj.edit47:setFontColor("#000000");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setLeft(0);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(53);
    obj.edit47:setHeight(44);
    obj.edit47:setField("parcela30");
    obj.edit47:setName("edit47");

    obj.ed46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed46:setParent(obj.scrollBox5);
    obj.ed46:setName("ed46");
    obj.ed46:setLeft(789);
    obj.ed46:setTop(571);
    obj.ed46:setWidth(53);
    obj.ed46:setHeight(43);

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.ed46);
    obj.edit48:setTransparent(true);
    obj.edit48:setFontSize(18);
    obj.edit48:setFontColor("#000000");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setLeft(0);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(53);
    obj.edit48:setHeight(44);
    obj.edit48:setField("resultadoSoma6");
    obj.edit48:setName("edit48");

    obj.ed51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed51:setParent(obj.scrollBox5);
    obj.ed51:setName("ed51");
    obj.ed51:setLeft(563);
    obj.ed51:setTop(624);
    obj.ed51:setWidth(53);
    obj.ed51:setHeight(43);

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.ed51);
    obj.edit49:setTransparent(true);
    obj.edit49:setFontSize(18);
    obj.edit49:setFontColor("#000000");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setLeft(0);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(53);
    obj.edit49:setHeight(44);
    obj.edit49:setField("parcela32");
    obj.edit49:setName("edit49");

    obj.ed48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed48:setParent(obj.scrollBox5);
    obj.ed48:setName("ed48");
    obj.ed48:setLeft(620);
    obj.ed48:setTop(623);
    obj.ed48:setWidth(53);
    obj.ed48:setHeight(43);

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.ed48);
    obj.edit50:setTransparent(true);
    obj.edit50:setFontSize(18);
    obj.edit50:setFontColor("#000000");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setLeft(0);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(53);
    obj.edit50:setHeight(44);
    obj.edit50:setField("parcela33");
    obj.edit50:setName("edit50");

    obj.ed49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed49:setParent(obj.scrollBox5);
    obj.ed49:setName("ed49");
    obj.ed49:setLeft(678);
    obj.ed49:setTop(623);
    obj.ed49:setWidth(53);
    obj.ed49:setHeight(43);

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.ed49);
    obj.edit51:setTransparent(true);
    obj.edit51:setFontSize(18);
    obj.edit51:setFontColor("#000000");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setLeft(0);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(53);
    obj.edit51:setHeight(44);
    obj.edit51:setField("parcela34");
    obj.edit51:setName("edit51");

    obj.ed52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed52:setParent(obj.scrollBox5);
    obj.ed52:setName("ed52");
    obj.ed52:setLeft(735);
    obj.ed52:setTop(624);
    obj.ed52:setWidth(53);
    obj.ed52:setHeight(43);

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.ed52);
    obj.edit52:setTransparent(true);
    obj.edit52:setFontSize(18);
    obj.edit52:setFontColor("#000000");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setLeft(0);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(53);
    obj.edit52:setHeight(44);
    obj.edit52:setField("parcela35");
    obj.edit52:setName("edit52");

    obj.ed53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed53:setParent(obj.scrollBox5);
    obj.ed53:setName("ed53");
    obj.ed53:setLeft(790);
    obj.ed53:setTop(624);
    obj.ed53:setWidth(53);
    obj.ed53:setHeight(43);

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.ed53);
    obj.edit53:setTransparent(true);
    obj.edit53:setFontSize(18);
    obj.edit53:setFontColor("#000000");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setLeft(0);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(53);
    obj.edit53:setHeight(44);
    obj.edit53:setField("resultadoSoma7");
    obj.edit53:setName("edit53");

    obj.ed56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed56:setParent(obj.scrollBox5);
    obj.ed56:setName("ed56");
    obj.ed56:setLeft(563);
    obj.ed56:setTop(675);
    obj.ed56:setWidth(53);
    obj.ed56:setHeight(43);

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.ed56);
    obj.edit54:setTransparent(true);
    obj.edit54:setFontSize(18);
    obj.edit54:setFontColor("#000000");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setLeft(0);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(53);
    obj.edit54:setHeight(44);
    obj.edit54:setField("parcela37");
    obj.edit54:setName("edit54");

    obj.ed54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed54:setParent(obj.scrollBox5);
    obj.ed54:setName("ed54");
    obj.ed54:setLeft(620);
    obj.ed54:setTop(674);
    obj.ed54:setWidth(53);
    obj.ed54:setHeight(43);

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.ed54);
    obj.edit55:setTransparent(true);
    obj.edit55:setFontSize(18);
    obj.edit55:setFontColor("#000000");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setLeft(0);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(53);
    obj.edit55:setHeight(44);
    obj.edit55:setField("parcela38");
    obj.edit55:setName("edit55");

    obj.ed55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed55:setParent(obj.scrollBox5);
    obj.ed55:setName("ed55");
    obj.ed55:setLeft(677);
    obj.ed55:setTop(674);
    obj.ed55:setWidth(53);
    obj.ed55:setHeight(43);

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.ed55);
    obj.edit56:setTransparent(true);
    obj.edit56:setFontSize(18);
    obj.edit56:setFontColor("#000000");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setLeft(0);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(53);
    obj.edit56:setHeight(44);
    obj.edit56:setField("parcela39");
    obj.edit56:setName("edit56");

    obj.ed57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed57:setParent(obj.scrollBox5);
    obj.ed57:setName("ed57");
    obj.ed57:setLeft(735);
    obj.ed57:setTop(675);
    obj.ed57:setWidth(53);
    obj.ed57:setHeight(43);

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.ed57);
    obj.edit57:setTransparent(true);
    obj.edit57:setFontSize(18);
    obj.edit57:setFontColor("#000000");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setVertTextAlign("center");
    obj.edit57:setLeft(0);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(53);
    obj.edit57:setHeight(44);
    obj.edit57:setField("parcela40");
    obj.edit57:setName("edit57");

    obj.ed58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed58:setParent(obj.scrollBox5);
    obj.ed58:setName("ed58");
    obj.ed58:setLeft(790);
    obj.ed58:setTop(675);
    obj.ed58:setWidth(53);
    obj.ed58:setHeight(43);

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.ed58);
    obj.edit58:setTransparent(true);
    obj.edit58:setFontSize(18);
    obj.edit58:setFontColor("#000000");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setVertTextAlign("center");
    obj.edit58:setLeft(0);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(53);
    obj.edit58:setHeight(44);
    obj.edit58:setField("resultadoSoma8");
    obj.edit58:setName("edit58");

    obj.ed61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed61:setParent(obj.scrollBox5);
    obj.ed61:setName("ed61");
    obj.ed61:setLeft(563);
    obj.ed61:setTop(723);
    obj.ed61:setWidth(53);
    obj.ed61:setHeight(43);

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.ed61);
    obj.edit59:setTransparent(true);
    obj.edit59:setFontSize(18);
    obj.edit59:setFontColor("#000000");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setVertTextAlign("center");
    obj.edit59:setLeft(0);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(53);
    obj.edit59:setHeight(44);
    obj.edit59:setField("parcela42");
    obj.edit59:setName("edit59");

    obj.ed62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed62:setParent(obj.scrollBox5);
    obj.ed62:setName("ed62");
    obj.ed62:setLeft(620);
    obj.ed62:setTop(724);
    obj.ed62:setWidth(53);
    obj.ed62:setHeight(43);

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.ed62);
    obj.edit60:setTransparent(true);
    obj.edit60:setFontSize(18);
    obj.edit60:setFontColor("#000000");
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setVertTextAlign("center");
    obj.edit60:setLeft(0);
    obj.edit60:setTop(0);
    obj.edit60:setWidth(53);
    obj.edit60:setHeight(44);
    obj.edit60:setField("parcela43");
    obj.edit60:setName("edit60");

    obj.ed63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed63:setParent(obj.scrollBox5);
    obj.ed63:setName("ed63");
    obj.ed63:setLeft(678);
    obj.ed63:setTop(724);
    obj.ed63:setWidth(53);
    obj.ed63:setHeight(43);

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.ed63);
    obj.edit61:setTransparent(true);
    obj.edit61:setFontSize(18);
    obj.edit61:setFontColor("#000000");
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setVertTextAlign("center");
    obj.edit61:setLeft(0);
    obj.edit61:setTop(0);
    obj.edit61:setWidth(53);
    obj.edit61:setHeight(44);
    obj.edit61:setField("parcela44");
    obj.edit61:setName("edit61");

    obj.ed64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed64:setParent(obj.scrollBox5);
    obj.ed64:setName("ed64");
    obj.ed64:setLeft(735);
    obj.ed64:setTop(725);
    obj.ed64:setWidth(53);
    obj.ed64:setHeight(43);

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.ed64);
    obj.edit62:setTransparent(true);
    obj.edit62:setFontSize(18);
    obj.edit62:setFontColor("#000000");
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setVertTextAlign("center");
    obj.edit62:setLeft(0);
    obj.edit62:setTop(0);
    obj.edit62:setWidth(53);
    obj.edit62:setHeight(44);
    obj.edit62:setField("parcela45");
    obj.edit62:setName("edit62");

    obj.ed65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed65:setParent(obj.scrollBox5);
    obj.ed65:setName("ed65");
    obj.ed65:setLeft(790);
    obj.ed65:setTop(725);
    obj.ed65:setWidth(53);
    obj.ed65:setHeight(43);

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.ed65);
    obj.edit63:setTransparent(true);
    obj.edit63:setFontSize(18);
    obj.edit63:setFontColor("#000000");
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setVertTextAlign("center");
    obj.edit63:setLeft(0);
    obj.edit63:setTop(0);
    obj.edit63:setWidth(53);
    obj.edit63:setHeight(44);
    obj.edit63:setField("resultadoSoma9");
    obj.edit63:setName("edit63");

    obj.ed66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed66:setParent(obj.scrollBox5);
    obj.ed66:setName("ed66");
    obj.ed66:setLeft(564);
    obj.ed66:setTop(774);
    obj.ed66:setWidth(53);
    obj.ed66:setHeight(43);

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.ed66);
    obj.edit64:setTransparent(true);
    obj.edit64:setFontSize(18);
    obj.edit64:setFontColor("#000000");
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setVertTextAlign("center");
    obj.edit64:setLeft(0);
    obj.edit64:setTop(0);
    obj.edit64:setWidth(53);
    obj.edit64:setHeight(44);
    obj.edit64:setField("parcela47");
    obj.edit64:setName("edit64");

    obj.ed71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed71:setParent(obj.scrollBox5);
    obj.ed71:setName("ed71");
    obj.ed71:setLeft(621);
    obj.ed71:setTop(775);
    obj.ed71:setWidth(53);
    obj.ed71:setHeight(43);

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.ed71);
    obj.edit65:setTransparent(true);
    obj.edit65:setFontSize(18);
    obj.edit65:setFontColor("#000000");
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setVertTextAlign("center");
    obj.edit65:setLeft(0);
    obj.edit65:setTop(0);
    obj.edit65:setWidth(53);
    obj.edit65:setHeight(44);
    obj.edit65:setField("parcela48");
    obj.edit65:setName("edit65");

    obj.ed67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed67:setParent(obj.scrollBox5);
    obj.ed67:setName("ed67");
    obj.ed67:setLeft(678);
    obj.ed67:setTop(774);
    obj.ed67:setWidth(53);
    obj.ed67:setHeight(43);

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.ed67);
    obj.edit66:setTransparent(true);
    obj.edit66:setFontSize(18);
    obj.edit66:setFontColor("#000000");
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setVertTextAlign("center");
    obj.edit66:setLeft(0);
    obj.edit66:setTop(0);
    obj.edit66:setWidth(53);
    obj.edit66:setHeight(44);
    obj.edit66:setField("parcela49");
    obj.edit66:setName("edit66");

    obj.ed68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed68:setParent(obj.scrollBox5);
    obj.ed68:setName("ed68");
    obj.ed68:setLeft(735);
    obj.ed68:setTop(774);
    obj.ed68:setWidth(53);
    obj.ed68:setHeight(43);

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.ed68);
    obj.edit67:setTransparent(true);
    obj.edit67:setFontSize(18);
    obj.edit67:setFontColor("#000000");
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setVertTextAlign("center");
    obj.edit67:setLeft(0);
    obj.edit67:setTop(0);
    obj.edit67:setWidth(53);
    obj.edit67:setHeight(44);
    obj.edit67:setField("parcela50");
    obj.edit67:setName("edit67");

    obj.ed69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed69:setParent(obj.scrollBox5);
    obj.ed69:setName("ed69");
    obj.ed69:setLeft(790);
    obj.ed69:setTop(774);
    obj.ed69:setWidth(53);
    obj.ed69:setHeight(43);

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.ed69);
    obj.edit68:setTransparent(true);
    obj.edit68:setFontSize(18);
    obj.edit68:setFontColor("#000000");
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setVertTextAlign("center");
    obj.edit68:setLeft(0);
    obj.edit68:setTop(0);
    obj.edit68:setWidth(53);
    obj.edit68:setHeight(44);
    obj.edit68:setField("resultadoSoma10");
    obj.edit68:setName("edit68");

    obj.ed23Hab = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed23Hab:setParent(obj.scrollBox5);
    obj.ed23Hab:setName("ed23Hab");
    obj.ed23Hab:setLeft(460);
    obj.ed23Hab:setTop(370);
    obj.ed23Hab:setWidth(100);
    obj.ed23Hab:setHeight(43);

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.ed23Hab);
    obj.label15:setFontSize(18);
    obj.label15:setFontColor("black");
    obj.label15:setHorzTextAlign("leading");
    obj.label15:setVertTextAlign("center");
    obj.label15:setLeft(0);
    obj.label15:setTop(0);
    obj.label15:setWidth(100);
    obj.label15:setHeight(44);
    obj.label15:setField("parcela6");
    obj.label15:setName("label15");

    obj.ed24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed24:setParent(obj.scrollBox5);
    obj.ed24:setName("ed24");
    obj.ed24:setLeft(478);
    obj.ed24:setTop(420);
    obj.ed24:setWidth(77);
    obj.ed24:setHeight(43);

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.ed24);
    obj.label16:setFontSize(18);
    obj.label16:setFontColor("black");
    obj.label16:setHorzTextAlign("leading");
    obj.label16:setVertTextAlign("center");
    obj.label16:setLeft(0);
    obj.label16:setTop(0);
    obj.label16:setWidth(77);
    obj.label16:setHeight(44);
    obj.label16:setField("parcela11");
    obj.label16:setName("label16");

    obj.ed32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed32:setParent(obj.scrollBox5);
    obj.ed32:setName("ed32");
    obj.ed32:setLeft(486);
    obj.ed32:setTop(472);
    obj.ed32:setWidth(73);
    obj.ed32:setHeight(43);

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.ed32);
    obj.label17:setFontSize(18);
    obj.label17:setFontColor("black");
    obj.label17:setHorzTextAlign("leading");
    obj.label17:setVertTextAlign("center");
    obj.label17:setLeft(0);
    obj.label17:setTop(0);
    obj.label17:setWidth(73);
    obj.label17:setHeight(44);
    obj.label17:setField("parcela16");
    obj.label17:setName("label17");

    obj.ed41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed41:setParent(obj.scrollBox5);
    obj.ed41:setName("ed41");
    obj.ed41:setLeft(446);
    obj.ed41:setTop(522);
    obj.ed41:setWidth(111);
    obj.ed41:setHeight(43);

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.ed41);
    obj.label18:setFontSize(18);
    obj.label18:setFontColor("black");
    obj.label18:setHorzTextAlign("leading");
    obj.label18:setVertTextAlign("center");
    obj.label18:setLeft(0);
    obj.label18:setTop(0);
    obj.label18:setWidth(111);
    obj.label18:setHeight(44);
    obj.label18:setField("parcela21");
    obj.label18:setName("label18");

    obj.ed47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed47:setParent(obj.scrollBox5);
    obj.ed47:setName("ed47");
    obj.ed47:setLeft(470);
    obj.ed47:setTop(574);
    obj.ed47:setWidth(89);
    obj.ed47:setHeight(43);

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.ed47);
    obj.label19:setFontSize(18);
    obj.label19:setFontColor("black");
    obj.label19:setHorzTextAlign("leading");
    obj.label19:setVertTextAlign("center");
    obj.label19:setLeft(0);
    obj.label19:setTop(0);
    obj.label19:setWidth(89);
    obj.label19:setHeight(44);
    obj.label19:setField("parcela26");
    obj.label19:setName("label19");

    obj.ed50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed50:setParent(obj.scrollBox5);
    obj.ed50:setName("ed50");
    obj.ed50:setLeft(460);
    obj.ed50:setTop(624);
    obj.ed50:setWidth(98);
    obj.ed50:setHeight(43);

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.ed50);
    obj.label20:setFontSize(18);
    obj.label20:setFontColor("black");
    obj.label20:setHorzTextAlign("leading");
    obj.label20:setVertTextAlign("center");
    obj.label20:setLeft(0);
    obj.label20:setTop(0);
    obj.label20:setWidth(98);
    obj.label20:setHeight(44);
    obj.label20:setField("parcela31");
    obj.label20:setName("label20");

    obj.ed59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed59:setParent(obj.scrollBox5);
    obj.ed59:setName("ed59");
    obj.ed59:setLeft(463);
    obj.ed59:setTop(676);
    obj.ed59:setWidth(96);
    obj.ed59:setHeight(43);

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.ed59);
    obj.label21:setFontSize(18);
    obj.label21:setFontColor("black");
    obj.label21:setHorzTextAlign("leading");
    obj.label21:setVertTextAlign("center");
    obj.label21:setLeft(0);
    obj.label21:setTop(0);
    obj.label21:setWidth(96);
    obj.label21:setHeight(44);
    obj.label21:setField("parcela36");
    obj.label21:setName("label21");

    obj.ed60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed60:setParent(obj.scrollBox5);
    obj.ed60:setName("ed60");
    obj.ed60:setLeft(446);
    obj.ed60:setTop(722);
    obj.ed60:setWidth(110);
    obj.ed60:setHeight(43);

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.ed60);
    obj.label22:setFontSize(18);
    obj.label22:setFontColor("black");
    obj.label22:setHorzTextAlign("leading");
    obj.label22:setVertTextAlign("center");
    obj.label22:setLeft(0);
    obj.label22:setTop(0);
    obj.label22:setWidth(110);
    obj.label22:setHeight(44);
    obj.label22:setField("parcela41");
    obj.label22:setName("label22");

    obj.ed70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed70:setParent(obj.scrollBox5);
    obj.ed70:setName("ed70");
    obj.ed70:setLeft(433);
    obj.ed70:setTop(775);
    obj.ed70:setWidth(124);
    obj.ed70:setHeight(43);

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.ed70);
    obj.label23:setFontSize(18);
    obj.label23:setFontColor("black");
    obj.label23:setHorzTextAlign("leading");
    obj.label23:setVertTextAlign("center");
    obj.label23:setLeft(0);
    obj.label23:setTop(0);
    obj.label23:setWidth(124);
    obj.label23:setHeight(44);
    obj.label23:setField("parcela46");
    obj.label23:setName("label23");

    obj.ed13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed13:setParent(obj.scrollBox5);
    obj.ed13:setName("ed13");
    obj.ed13:setLeft(1040);
    obj.ed13:setTop(317);
    obj.ed13:setWidth(53);
    obj.ed13:setHeight(43);

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.ed13);
    obj.edit69:setTransparent(true);
    obj.edit69:setFontSize(18);
    obj.edit69:setFontColor("#000000");
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setVertTextAlign("center");
    obj.edit69:setLeft(0);
    obj.edit69:setTop(0);
    obj.edit69:setWidth(53);
    obj.edit69:setHeight(44);
    obj.edit69:setField("parcela522");
    obj.edit69:setName("edit69");

    obj.ed9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed9:setParent(obj.scrollBox5);
    obj.ed9:setName("ed9");
    obj.ed9:setLeft(1117);
    obj.ed9:setTop(316);
    obj.ed9:setWidth(53);
    obj.ed9:setHeight(43);

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.ed9);
    obj.edit70:setTransparent(true);
    obj.edit70:setFontSize(18);
    obj.edit70:setFontColor("#000000");
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setVertTextAlign("center");
    obj.edit70:setLeft(0);
    obj.edit70:setTop(0);
    obj.edit70:setWidth(53);
    obj.edit70:setHeight(44);
    obj.edit70:setField("resultadoSoma11");
    obj.edit70:setName("edit70");

    obj.ed12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed12:setParent(obj.scrollBox5);
    obj.ed12:setName("ed12");
    obj.ed12:setLeft(909);
    obj.ed12:setTop(317);
    obj.ed12:setWidth(126);
    obj.ed12:setHeight(43);

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.ed12);
    obj.label24:setFontSize(18);
    obj.label24:setFontColor("black");
    obj.label24:setHorzTextAlign("leading");
    obj.label24:setVertTextAlign("center");
    obj.label24:setLeft(0);
    obj.label24:setTop(0);
    obj.label24:setWidth(126);
    obj.label24:setHeight(44);
    obj.label24:setField("parcela51");
    obj.label24:setName("label24");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.ed12);
    obj.image13:setSRC("/Imagens/botaoAtributo.png");
    obj.image13:setAlign("right");
    obj.image13:setCursor("handPoint");
    obj.image13:setHitTest(true);
    obj.image13:setWidth(25);
    obj.image13:setHeight(30);
    obj.image13:setName("image13");

    obj.suaversao = GUI.fromHandle(_obj_newObject("image"));
    obj.suaversao:setParent(obj.scrollBox5);
    obj.suaversao:setName("suaversao");
    obj.suaversao:setSRC("https://dl.dropboxusercontent.com/s/hbhfb1q67dq0ile/projetoVersao17.png?dl=0");
    obj.suaversao:setWidth(115);
    obj.suaversao:setHeight(25);
    obj.suaversao:setLeft(991);
    obj.suaversao:setTop(838.50);

    obj.suaVersao = GUI.fromHandle(_obj_newObject("label"));
    obj.suaVersao:setParent(obj.suaversao);
    obj.suaVersao:setName("suaVersao");
    obj.suaVersao:setText("Sua Versão");
    obj.suaVersao:setFontColor("black");
    obj.suaVersao:setAlign("top");
    obj.suaVersao:setMargins({top=25});
    obj.suaVersao:setHorzTextAlign("center");
    lfm_setPropAsString(obj.suaVersao, "fontStyle",  "bold");

    obj.versaoatual = GUI.fromHandle(_obj_newObject("image"));
    obj.versaoatual:setParent(obj.scrollBox5);
    obj.versaoatual:setName("versaoatual");
    obj.versaoatual:setWidth(115);
    obj.versaoatual:setHeight(25);
    obj.versaoatual:setLeft(1113);
    obj.versaoatual:setTop(838.50);

    obj.versaoatual2 = GUI.fromHandle(_obj_newObject("label"));
    obj.versaoatual2:setParent(obj.versaoatual);
    obj.versaoatual2:setName("versaoatual2");
    obj.versaoatual2:setText("Versão Atual");
    obj.versaoatual2:setHorzTextAlign("center");
    obj.versaoatual2:setAlign("top");
    obj.versaoatual2:setMargins({top=25});
    obj.versaoatual2:setFontColor("black");
    lfm_setPropAsString(obj.versaoatual2, "fontStyle",  "bold");


        self.versaoatual.url = 'https://dl.dropboxusercontent.com/s/r017isgceen4hjx/projetoVersao.png?dl=0' .. math.random();

    


    obj.atualizar = GUI.fromHandle(_obj_newObject("button"));
    obj.atualizar:setParent(obj.scrollBox5);
    obj.atualizar:setName("atualizar");
    obj.atualizar:setLeft(1060);
    obj.atualizar:setTop(805);
    obj.atualizar:setWidth(100);
    obj.atualizar:setText("Atualizar");

    obj.reset = GUI.fromHandle(_obj_newObject("button"));
    obj.reset:setParent(obj.scrollBox5);
    obj.reset:setName("reset");
    obj.reset:setText("reset");
    obj.reset:setLeft(10);
    obj.reset:setTop(20);
    obj.reset:setHitTest(true);

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.scrollBox5);
    obj.image14:setSRC("/Imagens/botaoAtributo.png");
    obj.image14:setLeft(0);
    obj.image14:setTop(0);
    obj.image14:setWidth(0);
    obj.image14:setHeight(0);
    obj.image14:setHitTest(true);
    obj.image14:setCursor("handPoint");
    obj.image14:setAlign("left");
    obj.image14:setMargins({left=-22});
    obj.image14:setName("image14");

    obj.iconeSkill = GUI.fromHandle(_obj_newObject("image"));
    obj.iconeSkill:setParent(obj.scrollBox5);
    obj.iconeSkill:setName("iconeSkill");
    obj.iconeSkill:setSRC("/Imagens/iconeSkill.png");
    obj.iconeSkill:setHitTest(true);
    obj.iconeSkill:setCursor("handPoint");
    obj.iconeSkill:setLeft(116);
    obj.iconeSkill:setTop(687);
    obj.iconeSkill:setWidth(84);
    obj.iconeSkill:setHeight(79);

    obj.iconeItens = GUI.fromHandle(_obj_newObject("image"));
    obj.iconeItens:setParent(obj.scrollBox5);
    obj.iconeItens:setName("iconeItens");
    obj.iconeItens:setSRC("/Icones/Itens/itens_on.png");
    obj.iconeItens:setHitTest(true);
    obj.iconeItens:setCursor("handPoint");
    obj.iconeItens:setLeft(100);
    obj.iconeItens:setTop(364);
    obj.iconeItens:setWidth(140);
    obj.iconeItens:setHeight(130);

    obj.mascoteIcone = GUI.fromHandle(_obj_newObject("image"));
    obj.mascoteIcone:setParent(obj.scrollBox5);
    obj.mascoteIcone:setName("mascoteIcone");
    obj.mascoteIcone:setLeft(70);
    obj.mascoteIcone:setTop(520);
    obj.mascoteIcone:setWidth(179);
    obj.mascoteIcone:setHeight(122);
    obj.mascoteIcone:setSRC("/Icones/Mascote/Mascote_on.png");
    obj.mascoteIcone:setHitTest(true);
    obj.mascoteIcone:setCursor("handPoint");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.scrollBox5);
    obj.label25:setField("Pontos2");
    obj.label25:setLeft(446);
    obj.label25:setTop(293.50);
    obj.label25:setFontColor("green");
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setHitTest(true);
    obj.label25:setName("label25");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.scrollBox5);
    obj.label26:setField("nivel");
    obj.label26:setLeft(425.25);
    obj.label26:setTop(35);
    obj.label26:setFontColor("green");
    obj.label26:setAutoSize(true);
    obj.label26:setFontSize(32);
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setWordWrap(false);
    obj.label26:setHitTest(true);
    obj.label26:setName("label26");

    obj.botaodeUP = GUI.fromHandle(_obj_newObject("button"));
    obj.botaodeUP:setParent(obj.scrollBox5);
    obj.botaodeUP:setName("botaodeUP");
    obj.botaodeUP:setText("UP");
    obj.botaodeUP:setFontColor("yellow");
    lfm_setPropAsString(obj.botaodeUP, "fontStyle",  "bold");
    obj.botaodeUP:setLeft(369);
    obj.botaodeUP:setTop(21);
    obj.botaodeUP:setWidth(28);
    obj.botaodeUP:setHeight(20);

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.scrollBox5);
    obj.dataLink3:setField("nivel");
    obj.dataLink3:setName("dataLink3");


                local function nivelvoltarfunc()
                   if Firecast.getMesaDe(sheet).meuJogador.isMestre then
                      sheet.nivel = (sheet.nivel or 0) - 1
                      end;
                      end;
                
                      local function nivelfunc()
                         if sheet.nivel >= 0 then
                            sheet.nivel = sheet.nivel + 1
                            end;
                            end;
                
                            local function operadorNivelfunc()
                               if sheet.nivel == 1 then
                                  sheet.Pontos2 = (sheet.Pontos2 or 0) +3
                               elseif sheet.nivel == 2 then
                                  sheet.Pontos2 = (sheet.Pontos2 or 0) +3
                               elseif sheet.nivel == 3 then
                                  sheet.Pontos2 = (sheet.Pontos2 or 0) +3
                               elseif sheet.nivel == 4 then
                                  sheet.Pontos2 = (sheet.Pontos2 or 0) +3
                               elseif sheet.nivel >= 5 then
                                  sheet.Pontos2 = (sheet.Pontos2 or 0) +1
                                  end;
                                  end;
                                  


    obj.botaon1 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon1:setParent(obj.scrollBox5);
    obj.botaon1:setName("botaon1");
    obj.botaon1:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon1:setStyle("autoFit");
    obj.botaon1:setHitTest(true);
    obj.botaon1:setCursor("handPoint");
    obj.botaon1:setLeft(342);
    obj.botaon1:setTop(318.50);
    obj.botaon1:setWidth(36);
    obj.botaon1:setHeight(48);

    obj.botaon2 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon2:setParent(obj.scrollBox5);
    obj.botaon2:setName("botaon2");
    obj.botaon2:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon2:setStyle("autoFit");
    obj.botaon2:setHitTest(true);
    obj.botaon2:setCursor("handPoint");
    obj.botaon2:setLeft(342);
    obj.botaon2:setTop(370.50);
    obj.botaon2:setWidth(36);
    obj.botaon2:setHeight(48);

    obj.botaon3 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon3:setParent(obj.scrollBox5);
    obj.botaon3:setName("botaon3");
    obj.botaon3:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon3:setStyle("autoFit");
    obj.botaon3:setHitTest(true);
    obj.botaon3:setCursor("handPoint");
    obj.botaon3:setLeft(342);
    obj.botaon3:setTop(421.50);
    obj.botaon3:setWidth(36);
    obj.botaon3:setHeight(48);

    obj.botaon4 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon4:setParent(obj.scrollBox5);
    obj.botaon4:setName("botaon4");
    obj.botaon4:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon4:setStyle("autoFit");
    obj.botaon4:setHitTest(true);
    obj.botaon4:setCursor("handPoint");
    obj.botaon4:setLeft(342);
    obj.botaon4:setTop(472.50);
    obj.botaon4:setWidth(36);
    obj.botaon4:setHeight(48);

    obj.botaon5 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon5:setParent(obj.scrollBox5);
    obj.botaon5:setName("botaon5");
    obj.botaon5:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon5:setStyle("autoFit");
    obj.botaon5:setHitTest(true);
    obj.botaon5:setCursor("handPoint");
    obj.botaon5:setLeft(342);
    obj.botaon5:setTop(522.50);
    obj.botaon5:setWidth(36);
    obj.botaon5:setHeight(48);

    obj.botaon6 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon6:setParent(obj.scrollBox5);
    obj.botaon6:setName("botaon6");
    obj.botaon6:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon6:setStyle("autoFit");
    obj.botaon6:setHitTest(true);
    obj.botaon6:setCursor("handPoint");
    obj.botaon6:setLeft(342);
    obj.botaon6:setTop(572.50);
    obj.botaon6:setWidth(36);
    obj.botaon6:setHeight(48);

    obj.botaon7 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon7:setParent(obj.scrollBox5);
    obj.botaon7:setName("botaon7");
    obj.botaon7:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon7:setStyle("autoFit");
    obj.botaon7:setHitTest(true);
    obj.botaon7:setCursor("handPoint");
    obj.botaon7:setLeft(342);
    obj.botaon7:setTop(625.50);
    obj.botaon7:setWidth(36);
    obj.botaon7:setHeight(48);

    obj.botaon8 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon8:setParent(obj.scrollBox5);
    obj.botaon8:setName("botaon8");
    obj.botaon8:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon8:setStyle("autoFit");
    obj.botaon8:setHitTest(true);
    obj.botaon8:setCursor("handPoint");
    obj.botaon8:setLeft(342);
    obj.botaon8:setTop(676.50);
    obj.botaon8:setWidth(36);
    obj.botaon8:setHeight(48);

    obj.botaon9 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon9:setParent(obj.scrollBox5);
    obj.botaon9:setName("botaon9");
    obj.botaon9:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon9:setStyle("autoFit");
    obj.botaon9:setHitTest(true);
    obj.botaon9:setCursor("handPoint");
    obj.botaon9:setLeft(342);
    obj.botaon9:setTop(724.50);
    obj.botaon9:setWidth(36);
    obj.botaon9:setHeight(48);

    obj.botaon10 = GUI.fromHandle(_obj_newObject("image"));
    obj.botaon10:setParent(obj.scrollBox5);
    obj.botaon10:setName("botaon10");
    obj.botaon10:setSRC("/Imagens/imagemDoDado.png");
    obj.botaon10:setStyle("autoFit");
    obj.botaon10:setHitTest(true);
    obj.botaon10:setCursor("handPoint");
    obj.botaon10:setLeft(342);
    obj.botaon10:setTop(776.50);
    obj.botaon10:setWidth(36);
    obj.botaon10:setHeight(48);

    obj.ed72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed72:setParent(obj.scrollBox5);
    obj.ed72:setName("ed72");
    obj.ed72:setTransparent(false);
    obj.ed72:setFontSize(23);
    obj.ed72:setFontColor("black");
    obj.ed72:setHorzTextAlign("center");
    obj.ed72:setField("parcela52");
    obj.ed72:setLeft(517);
    obj.ed72:setTop(320);
    obj.ed72:setWidth(40);
    obj.ed72:setHeight(40);

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.ed72);
    obj.image15:setSRC("/Imagens/botaoAtributo.png");
    obj.image15:setAlign("left");
    obj.image15:setCursor("handPoint");
    obj.image15:setHitTest(true);
    obj.image15:setMargins({left=-25});
    obj.image15:setWidth(25);
    obj.image15:setHeight(30);
    obj.image15:setName("image15");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.image15);
    obj.label27:setText("Bonus");
    obj.label27:setWidth(100);
    obj.label27:setAutoSize(true);
    obj.label27:setFontColor("black");
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setLeft(27.50);
    obj.label27:setTop(-17);
    obj.label27:setName("label27");

    obj.ed73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed73:setParent(obj.scrollBox5);
    obj.ed73:setName("ed73");
    obj.ed73:setTransparent(false);
    obj.ed73:setFontSize(23);
    obj.ed73:setFontColor("black");
    obj.ed73:setHorzTextAlign("center");
    obj.ed73:setField("parcela53");
    obj.ed73:setLeft(517);
    obj.ed73:setTop(372);
    obj.ed73:setWidth(40);
    obj.ed73:setHeight(40);

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.ed73);
    obj.image16:setSRC("/Imagens/botaoAtributo.png");
    obj.image16:setAlign("left");
    obj.image16:setCursor("handPoint");
    obj.image16:setHitTest(true);
    obj.image16:setMargins({left=-25});
    obj.image16:setWidth(25);
    obj.image16:setHeight(30);
    obj.image16:setName("image16");

    obj.ed74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed74:setParent(obj.scrollBox5);
    obj.ed74:setName("ed74");
    obj.ed74:setTransparent(false);
    obj.ed74:setFontSize(15);
    obj.ed74:setFontColor("black");
    obj.ed74:setHorzTextAlign("center");
    obj.ed74:setField("parcela54");
    obj.ed74:setLeft(532);
    obj.ed74:setTop(423);
    obj.ed74:setWidth(25);
    obj.ed74:setHeight(40);

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.ed74);
    obj.image17:setSRC("/Imagens/botaoAtributo.png");
    obj.image17:setAlign("left");
    obj.image17:setCursor("handPoint");
    obj.image17:setHitTest(true);
    obj.image17:setMargins({left=-25});
    obj.image17:setWidth(25);
    obj.image17:setHeight(30);
    obj.image17:setName("image17");

    obj.ed75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed75:setParent(obj.scrollBox5);
    obj.ed75:setName("ed75");
    obj.ed75:setTransparent(false);
    obj.ed75:setFontSize(15);
    obj.ed75:setFontColor("black");
    obj.ed75:setHorzTextAlign("center");
    obj.ed75:setField("parcela55");
    obj.ed75:setLeft(532);
    obj.ed75:setTop(475);
    obj.ed75:setWidth(25);
    obj.ed75:setHeight(40);

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.ed75);
    obj.image18:setSRC("/Imagens/botaoAtributo.png");
    obj.image18:setAlign("left");
    obj.image18:setCursor("handPoint");
    obj.image18:setHitTest(true);
    obj.image18:setMargins({left=-25});
    obj.image18:setWidth(25);
    obj.image18:setHeight(30);
    obj.image18:setName("image18");

    obj.ed76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed76:setParent(obj.scrollBox5);
    obj.ed76:setName("ed76");
    obj.ed76:setTransparent(false);
    obj.ed76:setFontSize(23);
    obj.ed76:setFontColor("black");
    obj.ed76:setHorzTextAlign("center");
    obj.ed76:setField("parcela56");
    obj.ed76:setLeft(517);
    obj.ed76:setTop(524);
    obj.ed76:setWidth(40);
    obj.ed76:setHeight(40);

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.ed76);
    obj.image19:setSRC("/Imagens/botaoAtributo.png");
    obj.image19:setAlign("left");
    obj.image19:setCursor("handPoint");
    obj.image19:setHitTest(true);
    obj.image19:setMargins({left=-25});
    obj.image19:setWidth(25);
    obj.image19:setHeight(30);
    obj.image19:setName("image19");

    obj.ed77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed77:setParent(obj.scrollBox5);
    obj.ed77:setName("ed77");
    obj.ed77:setTransparent(false);
    obj.ed77:setFontSize(23);
    obj.ed77:setFontColor("black");
    obj.ed77:setHorzTextAlign("center");
    obj.ed77:setField("parcela57");
    obj.ed77:setLeft(517);
    obj.ed77:setTop(576);
    obj.ed77:setWidth(40);
    obj.ed77:setHeight(40);

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.ed77);
    obj.image20:setSRC("/Imagens/botaoAtributo.png");
    obj.image20:setAlign("left");
    obj.image20:setCursor("handPoint");
    obj.image20:setHitTest(true);
    obj.image20:setMargins({left=-25});
    obj.image20:setWidth(25);
    obj.image20:setHeight(30);
    obj.image20:setName("image20");

    obj.ed78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed78:setParent(obj.scrollBox5);
    obj.ed78:setName("ed78");
    obj.ed78:setTransparent(false);
    obj.ed78:setFontSize(23);
    obj.ed78:setFontColor("black");
    obj.ed78:setHorzTextAlign("center");
    obj.ed78:setField("parcela58");
    obj.ed78:setLeft(517);
    obj.ed78:setTop(628);
    obj.ed78:setWidth(40);
    obj.ed78:setHeight(40);

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.ed78);
    obj.image21:setSRC("/Imagens/botaoAtributo.png");
    obj.image21:setAlign("left");
    obj.image21:setCursor("handPoint");
    obj.image21:setHitTest(true);
    obj.image21:setMargins({left=-25});
    obj.image21:setWidth(25);
    obj.image21:setHeight(30);
    obj.image21:setName("image21");

    obj.ed79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed79:setParent(obj.scrollBox5);
    obj.ed79:setName("ed79");
    obj.ed79:setTransparent(false);
    obj.ed79:setFontSize(23);
    obj.ed79:setFontColor("black");
    obj.ed79:setHorzTextAlign("center");
    obj.ed79:setField("parcela59");
    obj.ed79:setLeft(517);
    obj.ed79:setTop(679);
    obj.ed79:setWidth(40);
    obj.ed79:setHeight(40);

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.ed79);
    obj.image22:setSRC("/Imagens/botaoAtributo.png");
    obj.image22:setAlign("left");
    obj.image22:setCursor("handPoint");
    obj.image22:setHitTest(true);
    obj.image22:setMargins({left=-25});
    obj.image22:setWidth(25);
    obj.image22:setHeight(30);
    obj.image22:setName("image22");

    obj.ed80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed80:setParent(obj.scrollBox5);
    obj.ed80:setName("ed80");
    obj.ed80:setTransparent(false);
    obj.ed80:setFontSize(23);
    obj.ed80:setFontColor("black");
    obj.ed80:setHorzTextAlign("center");
    obj.ed80:setField("parcela60");
    obj.ed80:setLeft(517);
    obj.ed80:setTop(727);
    obj.ed80:setWidth(40);
    obj.ed80:setHeight(40);

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.ed80);
    obj.image23:setSRC("/Imagens/botaoAtributo.png");
    obj.image23:setAlign("left");
    obj.image23:setCursor("handPoint");
    obj.image23:setHitTest(true);
    obj.image23:setMargins({left=-25});
    obj.image23:setWidth(25);
    obj.image23:setHeight(30);
    obj.image23:setName("image23");

    obj.ed81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ed81:setParent(obj.scrollBox5);
    obj.ed81:setName("ed81");
    obj.ed81:setTransparent(false);
    obj.ed81:setFontSize(23);
    obj.ed81:setFontColor("black");
    obj.ed81:setHorzTextAlign("center");
    obj.ed81:setField("parcela61");
    obj.ed81:setLeft(517);
    obj.ed81:setTop(779);
    obj.ed81:setWidth(40);
    obj.ed81:setHeight(40);

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.ed81);
    obj.image24:setSRC("/Imagens/botaoAtributo.png");
    obj.image24:setAlign("left");
    obj.image24:setCursor("handPoint");
    obj.image24:setHitTest(true);
    obj.image24:setMargins({left=-25});
    obj.image24:setWidth(25);
    obj.image24:setHeight(30);
    obj.image24:setName("image24");

    obj.ed4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.ed4:setParent(obj.scrollBox5);
    obj.ed4:setName("ed4");
    obj.ed4:setLeft(901);
    obj.ed4:setTop(147);
    obj.ed4:setWidth(205);
    obj.ed4:setHeight(44);

    obj.labSoma2 = GUI.fromHandle(_obj_newObject("label"));
    obj.labSoma2:setParent(obj.ed4);
    obj.labSoma2:setFontSize(28);
    obj.labSoma2:setFontColor("black");
    lfm_setPropAsString(obj.labSoma2, "fontStyle",  "bold");
    obj.labSoma2:setHorzTextAlign("leading");
    obj.labSoma2:setVertTextAlign("center");
    obj.labSoma2:setLeft(0);
    obj.labSoma2:setTop(0);
    obj.labSoma2:setWidth(205);
    obj.labSoma2:setHeight(45);
    obj.labSoma2:setName("labSoma2");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.labSoma2);
    obj.dataLink4:setField("Soma");
    obj.dataLink4:setName("dataLink4");

    obj.imageEdit = GUI.fromHandle(_obj_newObject("image"));
    obj.imageEdit:setParent(obj.scrollBox5);
    obj.imageEdit:setName("imageEdit");
    obj.imageEdit:setField("imagemDoPersonagem2");
    obj.imageEdit:setEditable(true);
    obj.imageEdit:setStyle("autoFit");
    obj.imageEdit:setTop(45);
    obj.imageEdit:setLeft(56);
    obj.imageEdit:setVisible(true);
    obj.imageEdit:setWidth(278);
    obj.imageEdit:setHeight(322);

    obj.imageNivel = GUI.fromHandle(_obj_newObject("image"));
    obj.imageNivel:setParent(obj.scrollBox5);
    obj.imageNivel:setName("imageNivel");
    obj.imageNivel:setSRC("/Imagens/Nivel.png");
    obj.imageNivel:setLeft(346.75);
    obj.imageNivel:setTop(46.25);
    obj.imageNivel:setWidth(76);
    obj.imageNivel:setHeight(26);

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.scrollBox5);
    obj.dataLink5:setFields({'parcela1', 'parcela2', 'parcela3', 'parcela4', 'parcela5', 'parcela52'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.scrollBox5);
    obj.dataLink6:setFields({'parcela6', 'parcela7', 'parcela8', 'parcela9', 'parcela10', 'parcela53'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.scrollBox5);
    obj.dataLink7:setFields({'parcela11', 'parcela12', 'parcela13', 'parcela14', 'parcela15', 'parcela54'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.scrollBox5);
    obj.dataLink8:setFields({'parcela16', 'parcela17', 'parcela18', 'parcela19', 'parcela20', 'parcela55'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.scrollBox5);
    obj.dataLink9:setFields({'parcela21', 'parcela22', 'parcela23', 'parcela24', 'parcela25', 'parcela56'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.scrollBox5);
    obj.dataLink10:setFields({'parcela26', 'parcela27', 'parcela28', 'parcela29', 'parcela30', 'parcela57'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.scrollBox5);
    obj.dataLink11:setFields({'parcela31', 'parcela32', 'parcela33', 'parcela34', 'parcela35', 'parcela58'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.scrollBox5);
    obj.dataLink12:setFields({'parcela36', 'parcela37', 'parcela38', 'parcela39', 'parcela40', 'parcela59'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.scrollBox5);
    obj.dataLink13:setFields({'parcela41', 'parcela42', 'parcela43', 'parcela44', 'parcela45', 'parcela60'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.scrollBox5);
    obj.dataLink14:setFields({'parcela46', 'parcela47', 'parcela48', 'parcela49', 'parcela50', 'parcela61'});
    obj.dataLink14:setName("dataLink14");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            function format_thousand(v)
            	local s = string.format("%d", math.floor(v))
            	local pos = string.len(s) % 3 
            	if pos == 0 then pos = 3 end
                return string.sub(s, 1, pos)
            	    .. "" .. string.gsub(string.sub(s, pos+1), "(...)", ".%1") 
            		.. "" .. string.sub(string.format("%.0f", v - math.floor(v)), 3) 
            
            end;
            	  self.labSoma3.text = '$' .. format_thousand(sheet.soma);
        end, obj);

    obj._e_event1 = obj.troca:addEventListener("onMouseEnter",
        function (_)
            self.troca.src = "/Imagens/vender_off.png"
        end, obj);

    obj._e_event2 = obj.troca:addEventListener("onMouseLeave",
        function (_)
            self.troca.src = "/Imagens/vender_on.png"
        end, obj);

    obj._e_event3 = obj.troca:addEventListener("onClick",
        function (_)
            self.fichaPrincipal.visible = true
                         self.Pag2.visible = false;
        end, obj);

    obj._e_event4 = obj.button1:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rclListaDosItens:append();
        end, obj);

    obj._e_event5 = obj.rclListaDosItens:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                              --]]                      
                              local node = self.rclListaDosItens.selectedNode;  
                                     self.boxDetalhesDoItem.node = node;      
            						 
                              -- a caixa de detalhe só ficará visível se houver item selecionado
                                      self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event6 = obj.testeee:addEventListener("onClick",
        function (_)
            self.boxDetalhesDoItem.node.custo = (sheet.custo or 0) + 0;
                    self.boxDetalhesDoItem.node.nivelItem = 0;
        end, obj);

    obj._e_event7 = obj.label1:addEventListener("onClick",
        function (_)
            if rrpg.getMesaDe(sheet).meuJogador.isMestre then
            		dialogs.inputQuery("Nivel do item", "Level:", "",
            		   function (valorPreenchido)
            		      self.boxDetalhesDoItem.node.nivelItem = (sheet.nivelItem or 0) + valorPreenchido; 
            	    end);
            		end;
        end, obj);

    obj._e_event8 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.boxDetalhesDoItem.node.nivelItem == 0 then
                self.Venda.visible = false;
                self.botaoDeVenda.visible = false;
                self.colocarDinheiro.visible = false;
                self.naoVende.visible = true;
                self.dinheiro.visible = false;
               end;
              if self.boxDetalhesDoItem.node.nivelItem == 1 then
              self.mercadoNegro.visible = false;
              self.naoVende.visible = false;
                  self.botaoDeVenda.visible = true;
                self.Venda.visible = true;
                self.botaoDeVenda.visible = true;
                self.colocarDinheiro.visible = true;
                self.dinheiro.visible = true;
             end;
              if self.boxDetalhesDoItem.node.nivelItem == 2 then
              self.mercadoNegro.visible = false;
              self.naoVende.visible = false;
                  self.botaoDeVenda.visible = true;
                self.Venda.visible = true;
                self.botaoDeVenda.visible = true;
                self.colocarDinheiro.visible = true;
                self.dinheiro.visible = true;
             end;
              if self.boxDetalhesDoItem.node.nivelItem == 3 then
              self.mercadoNegro.visible = true;
                  self.botaoDeVenda.visible = false;
                self.Venda.visible = false;
                self.botaoDeVenda.visible = false;
                self.colocarDinheiro.visible = false;
                self.dinheiro.visible = false;
            
              end;
        end, obj);

    obj._e_event9 = obj.colocarDinheiro:addEventListener("onClick",
        function (_)
            if rrpg.getMesaDe(sheet).meuJogador.isMestre then
            		dialogs.inputQuery("Caixa", "Quantidades:", "",
            		   function (valorPreenchido)
            		      self.boxDetalhesDoItem.node.custo = (sheet.custo or 0) + valorPreenchido; 
            	    end);
            		end;
        end, obj);

    obj._e_event10 = obj.botaoDeVenda:addEventListener("onClick",
        function (_)
            local custo = tonumber(sheet.custo) or 0;
                local Soma = tonumber(sheet.Soma) or 0;
                sheet.Soma = Soma + self.boxDetalhesDoItem.node.custo; 
                custo = ndb.deleteNode(self.boxDetalhesDoItem.node);
        end, obj);

    obj._e_event11 = obj.button2:addEventListener("onClick",
        function (_)
            self.Massacote.visible = false;
                 self.Pag3.visible = true;
        end, obj);

    obj._e_event12 = obj.image6:addEventListener("onClick",
        function (_)
            self.fichaPrincipal.visible = true;
                         self.Pag3.visible = false;
                         self.Massacote.visible = false;
        end, obj);

    obj._e_event13 = obj.button3:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rclMascote:append();
        end, obj);

    obj._e_event14 = obj.rclMascote:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                              --]]                      
                              local node = self.rclMascote.selectedNode;  
                                     self.boxDetalhesDoItem33.node = node;                       
                              -- a caixa de detalhe só ficará visível se houver item selecionado
                                      self.boxDetalhesDoItem33.visible = (node ~= nil);
        end, obj);

    obj._e_event15 = obj.image7:addEventListener("onClick",
        function (_)
            self.fichaPrincipal.visible = true;
                         self.Pag3.visible = false;
        end, obj);

    obj._e_event16 = obj.button4:addEventListener("onClick",
        function (_)
            self.rclLista:append();
        end, obj);

    obj._e_event17 = obj.button5:addEventListener("onClick",
        function (_)
            exibirMensagem();
        end, obj);

    obj._e_event18 = obj.button6:addEventListener("onClick",
        function (_)
            exibirMensagem2();
        end, obj);

    obj._e_event19 = obj.image12:addEventListener("onClick",
        function (_)
            self.fichaPrincipal.visible = true;
                         self.Pag1.visible = false;
        end, obj);

    obj._e_event20 = obj.button7:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rclMagias:append();
        end, obj);

    obj._e_event21 = obj.rclMagias:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                              --]]                      
                              local node = self.rclMagias.selectedNode;  
                                     self.boxDetalhesDoItem2.node = node;                       
                              -- a caixa de detalhe só ficará visível se houver item selecionado
                                      self.boxDetalhesDoItem2.visible = (node ~= nil);
        end, obj);

    obj._e_event22 = obj.image13:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                        if Pontos2 >= 0 then
                        sheet.Pontos2 = Pontos2; sheet.parcela51 = (sheet.parcela51 or 0) +1;
                                    else 
                        showMessage("CALMA CARA! Não tem mais nada aqui...")    
                    end;
        end, obj);

    obj._e_event23 = obj.image13:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
                        if Pontos2 >= 0 then
                         sheet.Pontos2 = Pontos2; sheet.parcela51 = (sheet.parcela51 or 0) -1;
                                     else 
                          showMessage("CALMA CARA! Não tem mais nada aqui...")    
                     end;
        end, obj);

    obj._e_event24 = obj.atualizar:addEventListener("onClick",
        function (_)
            gui.openInBrowser('https://dl.dropboxusercontent.com/s/y1tbl7xcybzbqvt/DesbravadoresOficial.rpk?dl=0')
        end, obj);

    obj._e_event25 = obj.reset:addEventListener("onClick",
        function (_)
            if Firecast.getMesaDe(sheet).meuJogador.isMestre then
                            sheet.nivel = 0
                            sheet.Pontos2 = 20
                        
                            -- Criamos uma lista de variáveis que queremos atribuir valores
                            local variaveis = {
                                "parcela1",
                                "parcela6",
                                "parcela11",
                                "parcela16",
                                "parcela21",
                                "parcela26",
                                "parcela31",
                                "parcela36",
                                "parcela41",
                                "parcela46",
                                "parcela51"
                            }
                        
                            -- Usamos um laço for para percorrer a lista de variáveis
                            for i, variavel in ipairs(variaveis) do
                                -- Atribuímos o valor 0 a cada variável da lista
                                sheet[variavel] = 0
                            end
                        else
                            showMessage("Você não possui permissões aqui")
                        end
        end, obj);

    obj._e_event26 = obj.image14:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
            if Pontos2 >= 0 then
            sheet.Pontos2 = Pontos2; sheet.Parcela = (sheet.Parcela or 0) +1;
                      else 
            showMessage("Você não tem pontos para destribuir, seu fumão!")    
            end;
        end, obj);

    obj._e_event27 = obj.iconeSkill:addEventListener("onClick",
        function (_)
            self.fichaPrincipal.visible = false;
                         self.Pag1.visible = true
        end, obj);

    obj._e_event28 = obj.iconeItens:addEventListener("onClick",
        function (_)
            self.fichaPrincipal.visible = false;
                         self.Pag2.visible = true
        end, obj);

    obj._e_event29 = obj.mascoteIcone:addEventListener("onClick",
        function (_)
            self.fichaPrincipal.visible = false;
                                      self.Massacote.visible = true;
        end, obj);

    obj._e_event30 = obj.label25:addEventListener("onClick",
        function (_)
            if Firecast.getMesaDe(sheet).meuJogador.isMestre then
                                    dialogs.inputQuery("atributos", "Quantidade de Pontos:", "",
                                       function (valorPreenchido)
                                                  sheet.Pontos2 = (sheet.Pontos2 or 0) + valorPreenchido; 
                                    end);
                                    end;
        end, obj);

    obj._e_event31 = obj.label26:addEventListener("onClick",
        function (_)
            if Firecast.getMesaDe(sheet).meuJogador.isMestre then
                                dialogs.inputQuery("Nível", "Insira a quantidade de pontos:", "",
                                    function (valorPreenchido)
                                        if valorPreenchido then
                                            sheet.nivel = (sheet.nivel or 0) + tonumber(valorPreenchido)
                                        end
                                    end
                                )
                            end
        end, obj);

    obj._e_event32 = obj.botaodeUP:addEventListener("onMenu",
        function (_, x, y)
            nivelvoltarfunc(); 
        end, obj);

    obj._e_event33 = obj.botaodeUP:addEventListener("onClick",
        function (_)
            nivelfunc();operadorNivelfunc();avisoPericiafunc();
        end, obj);

    obj._e_event34 = obj.botaon1:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                    local msg = ""; 
                                    
                                    local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma or "0"));
                                    mesaDoPersonagem.activeChat:rolarDados(rolagem, "Força de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                    function(rolagem)
                                    msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                    showMessage(msg);
                                    end);
        end, obj);

    obj._e_event35 = obj.botaon2:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                    local msg = "";
            
                                    
                                    local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma2 or "0"));
                                    mesaDoPersonagem.activeChat:rolarDados(rolagem, "Habilidade de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                    function(rolagem)
                                    msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                    showMessage(msg);
                                    end);
        end, obj);

    obj._e_event36 = obj.botaon3:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                    local msg = ""; 
                                    
                                    local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma3 or "0"));
                                    mesaDoPersonagem.activeChat:rolarDados(rolagem, "Força Mágica de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                    function(rolagem)
                                    msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                    showMessage(msg);
                                    end);
        end, obj);

    obj._e_event37 = obj.botaon4:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                    local msg = ""; 
                                    
                                    local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma4 or "0"));
                                    mesaDoPersonagem.activeChat:rolarDados(rolagem, "Dano c/ armas de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                    function(rolagem)
                                    msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                    showMessage(msg);
                                    end);
        end, obj);

    obj._e_event38 = obj.botaon5:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                    local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma5 or "0"));
                                    mesaDoPersonagem.activeChat:rolarDados(rolagem, "Esquiva de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                        function(rolagem)
                                            showMessage("------------------- \nResultado rolagem: " .. rolagem.resultado);
                                        end
                                    );
        end, obj);

    obj._e_event39 = obj.botaon6:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                    local msg = ""; 
                                    
                                    local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma6 or "0"));
                                    mesaDoPersonagem.activeChat:rolarDados(rolagem, "Inteligência de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                    function(rolagem)
                                    msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                    showMessage(msg);
                                    end);
        end, obj);

    obj._e_event40 = obj.botaon7:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                    local msg = ""; 
                                    
                                    local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma7 or "0"));
                                    mesaDoPersonagem.activeChat:rolarDados(rolagem, "Percepção de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                    function(rolagem)
                                    msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                    showMessage(msg);
                                    end);
        end, obj);

    obj._e_event41 = obj.botaon8:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                        local msg = ""; 
                                        
                                        local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma8 or "0"));
                                        mesaDoPersonagem.activeChat:rolarDados(rolagem, "Resistência de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                        function(rolagem)
                                        msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                        showMessage(msg);
                                        end);
        end, obj);

    obj._e_event42 = obj.botaon9:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                        local msg = ""; 
                                    
                                        local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma9 or "0"));
                                        mesaDoPersonagem.activeChat:rolarDados(rolagem, "Carisma de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                        function(rolagem)
                                        msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                        showMessage(msg);
                                        end);
        end, obj);

    obj._e_event43 = obj.botaon10:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                    local msg = ""; 
                                
                                    local rolagem = Firecast.interpretarRolagem("1d12 + " .. (sheet.resultadoSoma9 or "0"));
                                    mesaDoPersonagem.activeChat:rolarDados(rolagem, "Vigor de " .. (sheet.Nome or "PONHA UM NOME NO PERSONAGEM"), 
                                    function(rolagem)
                                    msg = msg .. "------------------- \nResultado rolagem: " .. rolagem.resultado;
                                    showMessage(msg);
                                    end);
        end, obj);

    obj._e_event44 = obj.image15:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                if Pontos2 >= 0 then
                 sheet.Pontos2 = Pontos2; sheet.parcela1 = (sheet.parcela1 or 0) +1;
                             else 
                  showMessage("CALMA CARA! Não tem mais nada aqui...")    
             end;
        end, obj);

    obj._e_event45 = obj.image15:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                    if Pontos2 >= 0 and (sheet.parcela1 or 0) > 0 then
                 sheet.Pontos2 = Pontos2; sheet.parcela1 = (sheet.parcela1 or 0) -1;
                             else 
                  showMessage("Você não pode reduzir mais.")    
             end;
        end, obj);

    obj._e_event46 = obj.image16:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                        if Pontos2 >= 0 then
                                         sheet.Pontos2 = Pontos2; sheet.parcela6 = (sheet.parcela6 or 0) +1;
                                                     else 
                                          showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                     end;
        end, obj);

    obj._e_event47 = obj.image16:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                                    if Pontos2 >= 0 and (sheet.parcela6 or 0) > 0 then
                                 sheet.Pontos2 = Pontos2; sheet.parcela6 = (sheet.parcela6 or 0) -1;
                                             else 
                                  showMessage("Você não pode reduzir mais.")
                                   end;
        end, obj);

    obj._e_event48 = obj.image17:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                            if Pontos2 >= 0 then
                                             sheet.Pontos2 = Pontos2; sheet.parcela11 = (sheet.parcela11 or 0) +1;
                                                         else 
                                              showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                         end;
        end, obj);

    obj._e_event49 = obj.image17:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                                        if Pontos2 >= 0 and (sheet.parcela11 or 0) > 0 then
                                     sheet.Pontos2 = Pontos2; sheet.parcela11 = (sheet.parcela11 or 0) -1;
                                                 else 
                                      showMessage("Você não pode reduzir mais.")
                                       end;
        end, obj);

    obj._e_event50 = obj.image18:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                                if Pontos2 >= 0 then
                                                 sheet.Pontos2 = Pontos2; sheet.parcela16 = (sheet.parcela16 or 0) +1;
                                                             else 
                                                  showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                             end;
        end, obj);

    obj._e_event51 = obj.image18:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                                            if Pontos2 >= 0 and (sheet.parcela16 or 0) > 0 then
                                         sheet.Pontos2 = Pontos2; sheet.parcela16 = (sheet.parcela16 or 0) -1;
                                                     else 
                                          showMessage("Você não pode reduzir mais.")
                                           end;
        end, obj);

    obj._e_event52 = obj.image19:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                                    if Pontos2 >= 0 then
                                                     sheet.Pontos2 = Pontos2; sheet.parcela21 = (sheet.parcela21 or 0) +1;
                                                                 else 
                                                      showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                                 end;
        end, obj);

    obj._e_event53 = obj.image19:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                                                if Pontos2 >= 0 and (sheet.parcela21 or 0) > 0 then
                                             sheet.Pontos2 = Pontos2; sheet.parcela21 = (sheet.parcela21 or 0) -1;
                                                         else 
                                              showMessage("Você não pode reduzir mais.")
                                               end;
        end, obj);

    obj._e_event54 = obj.image20:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                                    if Pontos2 >= 0 then
                                                     sheet.Pontos2 = Pontos2; sheet.parcela26 = (sheet.parcela26 or 0) +1;
                                                                 else 
                                                      showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                                 end;
        end, obj);

    obj._e_event55 = obj.image20:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                                                if Pontos2 >= 0 and (sheet.parcela26 or 0) > 0 then
                                             sheet.Pontos2 = Pontos2; sheet.parcela26 = (sheet.parcela26 or 0) -1;
                                                         else 
                                              showMessage("Você não pode reduzir mais.")
                                               end;
        end, obj);

    obj._e_event56 = obj.image21:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                                    if Pontos2 >= 0 then
                                                     sheet.Pontos2 = Pontos2; sheet.parcela31 = (sheet.parcela31 or 0) +1;
                                                                 else 
                                                      showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                                 end;
        end, obj);

    obj._e_event57 = obj.image21:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                                                if Pontos2 >= 0 and (sheet.parcela31 or 0) > 0 then
                                             sheet.Pontos2 = Pontos2; sheet.parcela31 = (sheet.parcela31 or 0) -1;
                                                         else 
                                              showMessage("Você não pode reduzir mais.")
                                               end;
        end, obj);

    obj._e_event58 = obj.image22:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                                    if Pontos2 >= 0 then
                                                     sheet.Pontos2 = Pontos2; sheet.parcela36 = (sheet.parcela36 or 0) +1;
                                                                 else 
                                                      showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                                 end;
        end, obj);

    obj._e_event59 = obj.image22:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                                                if Pontos2 >= 0 and (sheet.parcela36 or 0) > 0 then
                                             sheet.Pontos2 = Pontos2; sheet.parcela36 = (sheet.parcela36 or 0) -1;
                                                         else 
                                              showMessage("Você não pode reduzir mais.")
                                               end;
        end, obj);

    obj._e_event60 = obj.image23:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                                    if Pontos2 >= 0 then
                                                     sheet.Pontos2 = Pontos2; sheet.parcela41 = (sheet.parcela41 or 0) +1;
                                                                 else 
                                                      showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                                 end;
        end, obj);

    obj._e_event61 = obj.image23:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                                                    if Pontos2 >= 0 and (sheet.parcela41 or 0) > 0 then
                                                 sheet.Pontos2 = Pontos2; sheet.parcela41 = (sheet.parcela41 or 0) -1;
                                                             else 
                                                  showMessage("Você não pode reduzir mais.") end;
        end, obj);

    obj._e_event62 = obj.image24:addEventListener("onClick",
        function (_)
            local Pontos2 = (sheet.Pontos2 or 0) -1;
                                                    if Pontos2 >= 0 then
                                                     sheet.Pontos2 = Pontos2; sheet.parcela46 = (sheet.parcela46 or 0) +1;
                                                                 else 
                                                      showMessage("CALMA CARA! Não tem mais nada aqui...")    
                                                 end;
        end, obj);

    obj._e_event63 = obj.image24:addEventListener("onMenu",
        function (_, x, y)
            local Pontos2 = (sheet.Pontos2 or 0) +1;
            
                        if Pontos2 >= 0 and (sheet.parcela46 or 0) > 0 then
                     sheet.Pontos2 = Pontos2; sheet.parcela46 = (sheet.parcela46 or 0) -1;
                                 else 
                      showMessage("Você não pode reduzir mais.") end;
        end, obj);

    obj._e_event64 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            function format_thousand(v)
            local s = string.format("%d", math.floor(v))
            local pos = string.len(s) % 3 
            if pos == 0 then pos = 3 end
            return string.sub(s, 1, pos)
            .. "" .. string.gsub(string.sub(s, pos+1), "(...)", ".%1") 
            .. "" .. string.sub(string.format("%.0f", v - math.floor(v)), 3) 
            
            end;
            self.labSoma2.text = '$' .. format_thousand(sheet.soma);
        end, obj);

    obj._e_event65 = obj.imageNivel:addEventListener("onClick",
        function (_)
            imageNivelfunc();
        end, obj);

    obj._e_event66 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma = (tonumber(sheet.parcela1) or 0) +
            					                         (tonumber(sheet.parcela2) or 0) + 
            											 (tonumber(sheet.parcela3) or 0) + 
            											 (tonumber(sheet.parcela4) or 0) + 
                                                        (tonumber(sheet.parcela5) or 0) +
                                                        (tonumber(sheet.parcela52) or 0);
        end, obj);

    obj._e_event67 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma2 = (tonumber(sheet.parcela6) or 0) +
            					                         (tonumber(sheet.parcela7) or 0) + 
            											 (tonumber(sheet.parcela8) or 0) + 
            											 (tonumber(sheet.parcela9) or 0) + 
                                                        (tonumber(sheet.parcela10) or 0) +
                                                        (tonumber(sheet.parcela53) or 0);
        end, obj);

    obj._e_event68 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma3 = (tonumber(sheet.parcela11) or 0) +
            					                         (tonumber(sheet.parcela12) or 0) + 
            											 (tonumber(sheet.parcela13) or 0) + 
            											 (tonumber(sheet.parcela14) or 0) + 
                                                        (tonumber(sheet.parcela15) or 0) +
                                                        (tonumber(sheet.parcela54) or 0);
        end, obj);

    obj._e_event69 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma4 = (tonumber(sheet.parcela16) or 0) +
            					                         (tonumber(sheet.parcela17) or 0) + 
            											 (tonumber(sheet.parcela18) or 0) + 
            											 (tonumber(sheet.parcela19) or 0) + 
                                                        (tonumber(sheet.parcela20) or 0) +
                                                        (tonumber(sheet.parcela55) or 0);
        end, obj);

    obj._e_event70 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma5 = (tonumber(sheet.parcela21) or 0) +
            					                         (tonumber(sheet.parcela22) or 0) + 
            											 (tonumber(sheet.parcela23) or 0) + 
            											 (tonumber(sheet.parcela24) or 0) + 
                                                        (tonumber(sheet.parcela25) or 0) +
                                                        (tonumber(sheet.parcela56) or 0);
        end, obj);

    obj._e_event71 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma6 = (tonumber(sheet.parcela26) or 0) +
            					                         (tonumber(sheet.parcela27) or 0) + 
            											 (tonumber(sheet.parcela28) or 0) + 
            											 (tonumber(sheet.parcela29) or 0) + 
                                                        (tonumber(sheet.parcela30) or 0) +
                                                        (tonumber(sheet.parcela57) or 0);
        end, obj);

    obj._e_event72 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma7 = (tonumber(sheet.parcela31) or 0) +
            					                         (tonumber(sheet.parcela32) or 0) + 
            											 (tonumber(sheet.parcela33) or 0) + 
            											 (tonumber(sheet.parcela34) or 0) + 
                                                        (tonumber(sheet.parcela35) or 0) +
                                                        (tonumber(sheet.parcela58) or 0);
        end, obj);

    obj._e_event73 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma8 = (tonumber(sheet.parcela36) or 0) +
            					                         (tonumber(sheet.parcela37) or 0) + 
            											 (tonumber(sheet.parcela38) or 0) + 
            											 (tonumber(sheet.parcela39) or 0) + 
                                                        (tonumber(sheet.parcela40) or 0) +
                                                        (tonumber(sheet.parcela59) or 0);
        end, obj);

    obj._e_event74 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma9 = (tonumber(sheet.parcela41) or 0) +
            					                         (tonumber(sheet.parcela42) or 0) + 
            											 (tonumber(sheet.parcela43) or 0) + 
            											 (tonumber(sheet.parcela44) or 0) + 
                                                        (tonumber(sheet.parcela45) or 0) +
                                                        (tonumber(sheet.parcela60) or 0);
        end, obj);

    obj._e_event75 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.resultadoSoma10 = (tonumber(sheet.parcela46) or 0) +
            					                         (tonumber(sheet.parcela47) or 0) + 
            											 (tonumber(sheet.parcela48) or 0) + 
            											 (tonumber(sheet.parcela49) or 0) + 
                                                        (tonumber(sheet.parcela50) or 0) +
                                                        (tonumber(sheet.parcela61) or 0);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event75);
        __o_rrpgObjs.removeEventListenerById(self._e_event74);
        __o_rrpgObjs.removeEventListenerById(self._e_event73);
        __o_rrpgObjs.removeEventListenerById(self._e_event72);
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
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

        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.ed40 ~= nil then self.ed40:destroy(); self.ed40 = nil; end;
        if self.ed8 ~= nil then self.ed8:destroy(); self.ed8 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.botaodeUP ~= nil then self.botaodeUP:destroy(); self.botaodeUP = nil; end;
        if self.ed43 ~= nil then self.ed43:destroy(); self.ed43 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.rclLista ~= nil then self.rclLista:destroy(); self.rclLista = nil; end;
        if self.ed70 ~= nil then self.ed70:destroy(); self.ed70 = nil; end;
        if self.ed20 ~= nil then self.ed20:destroy(); self.ed20 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.ed56 ~= nil then self.ed56:destroy(); self.ed56 = nil; end;
        if self.ed30 ~= nil then self.ed30:destroy(); self.ed30 = nil; end;
        if self.ed68 ~= nil then self.ed68:destroy(); self.ed68 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.ed75 ~= nil then self.ed75:destroy(); self.ed75 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.imageNivel ~= nil then self.imageNivel:destroy(); self.imageNivel = nil; end;
        if self.botaon7 ~= nil then self.botaon7:destroy(); self.botaon7 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.ed77 ~= nil then self.ed77:destroy(); self.ed77 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.fichaPrincipal ~= nil then self.fichaPrincipal:destroy(); self.fichaPrincipal = nil; end;
        if self.ed48 ~= nil then self.ed48:destroy(); self.ed48 = nil; end;
        if self.boxDetalhesDoItem2 ~= nil then self.boxDetalhesDoItem2:destroy(); self.boxDetalhesDoItem2 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.ed74 ~= nil then self.ed74:destroy(); self.ed74 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.ed37 ~= nil then self.ed37:destroy(); self.ed37 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.reset ~= nil then self.reset:destroy(); self.reset = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.rclMagias ~= nil then self.rclMagias:destroy(); self.rclMagias = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.labSoma3 ~= nil then self.labSoma3:destroy(); self.labSoma3 = nil; end;
        if self.labSoma2 ~= nil then self.labSoma2:destroy(); self.labSoma2 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.ed26 ~= nil then self.ed26:destroy(); self.ed26 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.ed44 ~= nil then self.ed44:destroy(); self.ed44 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.botaon1 ~= nil then self.botaon1:destroy(); self.botaon1 = nil; end;
        if self.ed14Forca ~= nil then self.ed14Forca:destroy(); self.ed14Forca = nil; end;
        if self.ed62 ~= nil then self.ed62:destroy(); self.ed62 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.Im1 ~= nil then self.Im1:destroy(); self.Im1 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.versaoatual ~= nil then self.versaoatual:destroy(); self.versaoatual = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.ed5 ~= nil then self.ed5:destroy(); self.ed5 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.naoVende ~= nil then self.naoVende:destroy(); self.naoVende = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.ed35 ~= nil then self.ed35:destroy(); self.ed35 = nil; end;
        if self.ed58 ~= nil then self.ed58:destroy(); self.ed58 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.ed15 ~= nil then self.ed15:destroy(); self.ed15 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.colocarDinheiro ~= nil then self.colocarDinheiro:destroy(); self.colocarDinheiro = nil; end;
        if self.ed6 ~= nil then self.ed6:destroy(); self.ed6 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.ed18 ~= nil then self.ed18:destroy(); self.ed18 = nil; end;
        if self.ed36 ~= nil then self.ed36:destroy(); self.ed36 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.testeee ~= nil then self.testeee:destroy(); self.testeee = nil; end;
        if self.ed46 ~= nil then self.ed46:destroy(); self.ed46 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.ed9 ~= nil then self.ed9:destroy(); self.ed9 = nil; end;
        if self.ed81 ~= nil then self.ed81:destroy(); self.ed81 = nil; end;
        if self.rclMascote ~= nil then self.rclMascote:destroy(); self.rclMascote = nil; end;
        if self.ed34 ~= nil then self.ed34:destroy(); self.ed34 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.ed31 ~= nil then self.ed31:destroy(); self.ed31 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.ed42 ~= nil then self.ed42:destroy(); self.ed42 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.ed55 ~= nil then self.ed55:destroy(); self.ed55 = nil; end;
        if self.Pag1 ~= nil then self.Pag1:destroy(); self.Pag1 = nil; end;
        if self.ed59 ~= nil then self.ed59:destroy(); self.ed59 = nil; end;
        if self.boxDetalhesDoItem33 ~= nil then self.boxDetalhesDoItem33:destroy(); self.boxDetalhesDoItem33 = nil; end;
        if self.ed28 ~= nil then self.ed28:destroy(); self.ed28 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.ed22 ~= nil then self.ed22:destroy(); self.ed22 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.ed79 ~= nil then self.ed79:destroy(); self.ed79 = nil; end;
        if self.dinheiro ~= nil then self.dinheiro:destroy(); self.dinheiro = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.ed32 ~= nil then self.ed32:destroy(); self.ed32 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.ed2 ~= nil then self.ed2:destroy(); self.ed2 = nil; end;
        if self.ed47 ~= nil then self.ed47:destroy(); self.ed47 = nil; end;
        if self.ed52 ~= nil then self.ed52:destroy(); self.ed52 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.ed53 ~= nil then self.ed53:destroy(); self.ed53 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.ed7 ~= nil then self.ed7:destroy(); self.ed7 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.ed33 ~= nil then self.ed33:destroy(); self.ed33 = nil; end;
        if self.ed69 ~= nil then self.ed69:destroy(); self.ed69 = nil; end;
        if self.mascoteIcone ~= nil then self.mascoteIcone:destroy(); self.mascoteIcone = nil; end;
        if self.ed60 ~= nil then self.ed60:destroy(); self.ed60 = nil; end;
        if self.ed17 ~= nil then self.ed17:destroy(); self.ed17 = nil; end;
        if self.ed54 ~= nil then self.ed54:destroy(); self.ed54 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.suaVersao ~= nil then self.suaVersao:destroy(); self.suaVersao = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.ed27 ~= nil then self.ed27:destroy(); self.ed27 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.botaon4 ~= nil then self.botaon4:destroy(); self.botaon4 = nil; end;
        if self.ed61 ~= nil then self.ed61:destroy(); self.ed61 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.ed12 ~= nil then self.ed12:destroy(); self.ed12 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.botaon10 ~= nil then self.botaon10:destroy(); self.botaon10 = nil; end;
        if self.ed24 ~= nil then self.ed24:destroy(); self.ed24 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.botaon5 ~= nil then self.botaon5:destroy(); self.botaon5 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.versaoatual2 ~= nil then self.versaoatual2:destroy(); self.versaoatual2 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.ed11 ~= nil then self.ed11:destroy(); self.ed11 = nil; end;
        if self.ed45 ~= nil then self.ed45:destroy(); self.ed45 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.ed72 ~= nil then self.ed72:destroy(); self.ed72 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.ed78 ~= nil then self.ed78:destroy(); self.ed78 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.Pag3 ~= nil then self.Pag3:destroy(); self.Pag3 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.suaversao ~= nil then self.suaversao:destroy(); self.suaversao = nil; end;
        if self.ed23Hab ~= nil then self.ed23Hab:destroy(); self.ed23Hab = nil; end;
        if self.ed76 ~= nil then self.ed76:destroy(); self.ed76 = nil; end;
        if self.ed57 ~= nil then self.ed57:destroy(); self.ed57 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.ed49 ~= nil then self.ed49:destroy(); self.ed49 = nil; end;
        if self.ed80 ~= nil then self.ed80:destroy(); self.ed80 = nil; end;
        if self.ed21 ~= nil then self.ed21:destroy(); self.ed21 = nil; end;
        if self.Venda ~= nil then self.Venda:destroy(); self.Venda = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.ed16 ~= nil then self.ed16:destroy(); self.ed16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.imageEdit ~= nil then self.imageEdit:destroy(); self.imageEdit = nil; end;
        if self.ed3 ~= nil then self.ed3:destroy(); self.ed3 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.ed4 ~= nil then self.ed4:destroy(); self.ed4 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.ed29 ~= nil then self.ed29:destroy(); self.ed29 = nil; end;
        if self.ed63 ~= nil then self.ed63:destroy(); self.ed63 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.botaon2 ~= nil then self.botaon2:destroy(); self.botaon2 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.Massacote ~= nil then self.Massacote:destroy(); self.Massacote = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.ed19 ~= nil then self.ed19:destroy(); self.ed19 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.botaon6 ~= nil then self.botaon6:destroy(); self.botaon6 = nil; end;
        if self.troca ~= nil then self.troca:destroy(); self.troca = nil; end;
        if self.botaoDeVenda ~= nil then self.botaoDeVenda:destroy(); self.botaoDeVenda = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.botaon3 ~= nil then self.botaon3:destroy(); self.botaon3 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.mercadoNegro ~= nil then self.mercadoNegro:destroy(); self.mercadoNegro = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.DragaoDeArmadura ~= nil then self.DragaoDeArmadura:destroy(); self.DragaoDeArmadura = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.botaon9 ~= nil then self.botaon9:destroy(); self.botaon9 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.ed64 ~= nil then self.ed64:destroy(); self.ed64 = nil; end;
        if self.ed25 ~= nil then self.ed25:destroy(); self.ed25 = nil; end;
        if self.ed71 ~= nil then self.ed71:destroy(); self.ed71 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.ed51 ~= nil then self.ed51:destroy(); self.ed51 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.botaon8 ~= nil then self.botaon8:destroy(); self.botaon8 = nil; end;
        if self.Pag2 ~= nil then self.Pag2:destroy(); self.Pag2 = nil; end;
        if self.ed41 ~= nil then self.ed41:destroy(); self.ed41 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.ed67 ~= nil then self.ed67:destroy(); self.ed67 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.ed50 ~= nil then self.ed50:destroy(); self.ed50 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.ed13 ~= nil then self.ed13:destroy(); self.ed13 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.ed38 ~= nil then self.ed38:destroy(); self.ed38 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.ed1 ~= nil then self.ed1:destroy(); self.ed1 = nil; end;
        if self.ed65 ~= nil then self.ed65:destroy(); self.ed65 = nil; end;
        if self.ed66 ~= nil then self.ed66:destroy(); self.ed66 = nil; end;
        if self.ed73 ~= nil then self.ed73:destroy(); self.ed73 = nil; end;
        if self.ed10 ~= nil then self.ed10:destroy(); self.ed10 = nil; end;
        if self.atualizar ~= nil then self.atualizar:destroy(); self.atualizar = nil; end;
        if self.iconeSkill ~= nil then self.iconeSkill:destroy(); self.iconeSkill = nil; end;
        if self.iconeItens ~= nil then self.iconeItens:destroy(); self.iconeItens = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmDesbravadores23_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmDesbravadores23_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmDesbravadores23_svg = {
    newEditor = newfrmDesbravadores23_svg, 
    new = newfrmDesbravadores23_svg, 
    name = "frmDesbravadores23_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmDesbravadores23_svg = _frmDesbravadores23_svg;
Firecast.registrarForm(_frmDesbravadores23_svg);

return _frmDesbravadores23_svg;
