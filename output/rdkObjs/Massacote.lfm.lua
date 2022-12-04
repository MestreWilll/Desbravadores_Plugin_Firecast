require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmMassacote()
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
    obj:setName("frmMassacote");
    obj:setHeight(810);
    obj:setTheme("dark");
    obj:setMargins({left=0, top=0});

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj);
    obj.image1:setSRC("/Imagens/Massacote.png");
    obj.image1:setWidth(526);
    obj.image1:setHeight(800);
    obj.image1:setName("image1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj);
    obj.image2:setSRC("/Imagens/X.png");
    obj.image2:setLeft(482);
    obj.image2:setTop(4.50);
    obj.image2:setWidth(38.75);
    obj.image2:setHeight(32.50);
    obj.image2:setHitTest(true);
    obj.image2:setCursor("handPoint");
    obj.image2:setOpacity(0);
    obj.image2:setName("image2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj);
    obj.image3:setField("ImagemDoMassacote");
    obj.image3:setEditable(true);
    obj.image3:setLeft(27.50);
    obj.image3:setTop(143.50);
    obj.image3:setWidth(246.75);
    obj.image3:setHeight(252.75);
    obj.image3:setStyle("autoFit");
    obj.image3:setName("image3");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj);
    obj.edit1:setTransparent(true);
    obj.edit1:setField("nome");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setFontSize(20);
    obj.edit1:setLeft(30);
    obj.edit1:setTop(105);
    obj.edit1:setWidth(245.75);
    obj.edit1:setHeight(28);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontColor("green");
    obj.edit1:setName("edit1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj);
    obj.label1:setField("ForcaM");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontSize(25);
    obj.label1:setLeft(401.75);
    obj.label1:setTop(93.25);
    obj.label1:setWidth(81.75);
    obj.label1:setHeight(32.25);
    obj.label1:setHorzTextAlign("center");
    obj.label1:setFontColor("darkorchid");
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj);
    obj.label2:setField("HabilidadeM");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontSize(25);
    obj.label2:setLeft(401.75);
    obj.label2:setTop(158.25);
    obj.label2:setWidth(81.75);
    obj.label2:setHeight(32.25);
    obj.label2:setHorzTextAlign("center");
    obj.label2:setFontColor("darkorchid");
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj);
    obj.label3:setField("InteligenciaM");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontSize(25);
    obj.label3:setLeft(401.75);
    obj.label3:setTop(223.25);
    obj.label3:setWidth(81.75);
    obj.label3:setHeight(32.25);
    obj.label3:setHorzTextAlign("center");
    obj.label3:setFontColor("darkorchid");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj);
    obj.label4:setField("PercepcaoM");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontSize(25);
    obj.label4:setLeft(401.75);
    obj.label4:setTop(288.25);
    obj.label4:setWidth(81.75);
    obj.label4:setHeight(32.25);
    obj.label4:setHorzTextAlign("center");
    obj.label4:setFontColor("darkorchid");
    obj.label4:setName("label4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj);
    obj.label5:setField("VigorM");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontSize(25);
    obj.label5:setLeft(401.75);
    obj.label5:setTop(352.25);
    obj.label5:setWidth(81.75);
    obj.label5:setHeight(32.25);
    obj.label5:setHorzTextAlign("center");
    obj.label5:setFontColor("darkorchid");
    obj.label5:setName("label5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj);
    obj.label6:setField("SorteM");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontSize(25);
    obj.label6:setLeft(401.75);
    obj.label6:setTop(417.25);
    obj.label6:setWidth(81.75);
    obj.label6:setHeight(32.25);
    obj.label6:setHorzTextAlign("center");
    obj.label6:setFontColor("darkorchid");
    obj.label6:setHitTest(true);
    obj.label6:setName("label6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj);
    obj.label7:setField("NivelMM");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontSize(30);
    obj.label7:setLeft(15.25);
    obj.label7:setTop(431.50);
    obj.label7:setWidth(71.25);
    obj.label7:setHeight(53.50);
    obj.label7:setHorzTextAlign("center");
    obj.label7:setFontColor("Red");
    obj.label7:setName("label7");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj);
    obj.edit2:setTransparent(true);
    obj.edit2:setField("RacaMM");
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setFontSize(25);
    obj.edit2:setLeft(104);
    obj.edit2:setTop(430.75);
    obj.edit2:setWidth(141);
    obj.edit2:setHeight(36);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setFontColor("green");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj);
    obj.edit3:setTransparent(true);
    obj.edit3:setField("IdadeMM");
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setFontSize(20);
    obj.edit3:setLeft(249.50);
    obj.edit3:setTop(425);
    obj.edit3:setWidth(51);
    obj.edit3:setHeight(45);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontColor("green");
    obj.edit3:setName("edit3");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setField("AnotacoesMM");
    obj.textEditor1:setFontSize(20);
    obj.textEditor1:setLeft(81.50);
    obj.textEditor1:setTop(605);
    obj.textEditor1:setWidth(177.75);
    obj.textEditor1:setHeight(150.50);
    obj.textEditor1:setFontColor("black");
    obj.textEditor1:setName("textEditor1");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setField("SkillMM");
    obj.textEditor2:setFontSize(20);
    obj.textEditor2:setLeft(281);
    obj.textEditor2:setTop(528.25);
    obj.textEditor2:setWidth(176.25);
    obj.textEditor2:setHeight(229.50);
    obj.textEditor2:setFontColor("black");
    obj.textEditor2:setName("textEditor2");

    obj.progressBar1 = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar1:setParent(obj);
    obj.progressBar1:setFieldMax("barrinhas1");
    obj.progressBar1:setField("barrinhas2");
    obj.progressBar1:setLeft(127.75);
    obj.progressBar1:setTop(515);
    obj.progressBar1:setWidth(133.75);
    obj.progressBar1:setHeight(16.50);
    obj.progressBar1:setColor("red");
    obj.progressBar1:setName("progressBar1");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj);
    obj.edit4:setField("barrinhas1");
    obj.edit4:setLeft(133.25);
    obj.edit4:setTop(538);
    obj.edit4:setWidth(44.25);
    obj.edit4:setHeight(28);
    obj.edit4:setName("edit4");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.edit4);
    obj.label8:setText("TOTAL");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("brown");
    obj.label8:setAlign("top");
    obj.label8:setMargins({top=30});
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj);
    obj.edit5:setField("barrinhas2");
    obj.edit5:setLeft(190.25);
    obj.edit5:setTop(538);
    obj.edit5:setWidth(44.25);
    obj.edit5:setHeight(28);
    obj.edit5:setName("edit5");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.edit5);
    obj.label9:setText("ATUAL");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("brown");
    obj.label9:setAlign("top");
    obj.label9:setMargins({top=30});
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj);
    obj.button1:setText("Iniciativa");
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");
    obj.button1:setFontColor("black");
    obj.button1:setFontSize(14);
    obj.button1:setLeft(430);
    obj.button1:setTop(772);
    obj.button1:setWidth(86);
    obj.button1:setHeight(20);
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj);
    obj.button2:setText("UP");
    lfm_setPropAsString(obj.button2, "fontStyle",  "bold");
    obj.button2:setFontColor("yellow");
    obj.button2:setFontSize(14);
    obj.button2:setLeft(475);
    obj.button2:setTop(52);
    obj.button2:setWidth(30);
    obj.button2:setHeight(30);
    obj.button2:setName("button2");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj);
    obj.label10:setField("nivelM");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontSize(17);
    obj.label10:setLeft(193);
    obj.label10:setTop(56);
    obj.label10:setName("label10");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj);
    obj.button3:setText("R");
    obj.button3:setFontFamily("Showcard Gothic");
    obj.button3:setLeft(497);
    obj.button3:setTop(84);
    obj.button3:setWidth(18);
    obj.button3:setHeight(19);
    obj.button3:setName("button3");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj);
    obj.button4:setText("+");
    obj.button4:setFontFamily("Showcard Gothic");
    obj.button4:setLeft(497);
    obj.button4:setTop(104);
    obj.button4:setWidth(18);
    obj.button4:setHeight(19);
    obj.button4:setName("button4");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj);
    obj.button5:setText("R");
    obj.button5:setFontFamily("Showcard Gothic");
    obj.button5:setLeft(497);
    obj.button5:setTop(152);
    obj.button5:setWidth(18);
    obj.button5:setHeight(19);
    obj.button5:setName("button5");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj);
    obj.button6:setText("+");
    obj.button6:setFontFamily("Showcard Gothic");
    obj.button6:setLeft(497);
    obj.button6:setTop(171);
    obj.button6:setWidth(18);
    obj.button6:setHeight(19);
    obj.button6:setName("button6");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj);
    obj.button7:setText("R");
    obj.button7:setFontFamily("Showcard Gothic");
    obj.button7:setLeft(497);
    obj.button7:setTop(217);
    obj.button7:setWidth(18);
    obj.button7:setHeight(19);
    obj.button7:setName("button7");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj);
    obj.button8:setText("+");
    obj.button8:setFontFamily("Showcard Gothic");
    obj.button8:setLeft(497);
    obj.button8:setTop(236);
    obj.button8:setWidth(18);
    obj.button8:setHeight(19);
    obj.button8:setName("button8");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj);
    obj.button9:setText("R");
    obj.button9:setFontFamily("Showcard Gothic");
    obj.button9:setLeft(497);
    obj.button9:setTop(282);
    obj.button9:setWidth(18);
    obj.button9:setHeight(19);
    obj.button9:setName("button9");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj);
    obj.button10:setText("+");
    obj.button10:setFontFamily("Showcard Gothic");
    obj.button10:setLeft(497);
    obj.button10:setTop(302);
    obj.button10:setWidth(18);
    obj.button10:setHeight(19);
    obj.button10:setName("button10");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj);
    obj.button11:setText("R");
    obj.button11:setFontFamily("Showcard Gothic");
    obj.button11:setLeft(497);
    obj.button11:setTop(346);
    obj.button11:setWidth(18);
    obj.button11:setHeight(19);
    obj.button11:setName("button11");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj);
    obj.button12:setText("+");
    obj.button12:setFontFamily("Showcard Gothic");
    obj.button12:setLeft(497);
    obj.button12:setTop(366);
    obj.button12:setWidth(18);
    obj.button12:setHeight(19);
    obj.button12:setName("button12");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj);
    obj.button13:setText("R");
    obj.button13:setFontFamily("Showcard Gothic");
    obj.button13:setLeft(497);
    obj.button13:setTop(411);
    obj.button13:setWidth(18);
    obj.button13:setHeight(19);
    obj.button13:setName("button13");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj);
    obj.button14:setText("+");
    obj.button14:setFontFamily("Showcard Gothic");
    obj.button14:setLeft(497);
    obj.button14:setTop(431);
    obj.button14:setWidth(18);
    obj.button14:setHeight(19);
    obj.button14:setName("button14");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj);
    obj.button15:setText("-");
    obj.button15:setFontFamily("Showcard Gothic");
    obj.button15:setLeft(497);
    obj.button15:setTop(124);
    obj.button15:setWidth(18);
    obj.button15:setHeight(19);
    obj.button15:setName("button15");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj);
    obj.button16:setText("-");
    obj.button16:setFontFamily("Showcard Gothic");
    obj.button16:setLeft(497);
    obj.button16:setTop(191);
    obj.button16:setWidth(18);
    obj.button16:setHeight(19);
    obj.button16:setName("button16");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj);
    obj.button17:setText("-");
    obj.button17:setFontFamily("Showcard Gothic");
    obj.button17:setLeft(497);
    obj.button17:setTop(256);
    obj.button17:setWidth(18);
    obj.button17:setHeight(19);
    obj.button17:setName("button17");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj);
    obj.button18:setText("-");
    obj.button18:setFontFamily("Showcard Gothic");
    obj.button18:setLeft(497);
    obj.button18:setTop(321);
    obj.button18:setWidth(18);
    obj.button18:setHeight(19);
    obj.button18:setName("button18");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj);
    obj.button19:setText("-");
    obj.button19:setFontFamily("Showcard Gothic");
    obj.button19:setLeft(497);
    obj.button19:setTop(386);
    obj.button19:setWidth(18);
    obj.button19:setHeight(19);
    obj.button19:setName("button19");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj);
    obj.button20:setText("-");
    obj.button20:setFontFamily("Showcard Gothic");
    obj.button20:setLeft(497);
    obj.button20:setTop(451);
    obj.button20:setWidth(18);
    obj.button20:setHeight(19);
    obj.button20:setName("button20");

    obj._e_event0 = obj.image2:addEventListener("onDblClick",
        function (_)
            ndb.deleteNode(sheet);
        end, obj);

    obj._e_event1 = obj.label6:addEventListener("onClick",
        function (_)
            if rrpg.getMesaDe(sheet).meuJogador.isMestre then
            		dialogs.inputQuery("Atributo", "Novo valor:", "",
            		   function (valorPreenchido)
            					  sheet.SorteM = (sheet.SorteM or 0 ) + valorPreenchido; 
            	    end);
            		end;
        end, obj);

    obj._e_event2 = obj.button1:addEventListener("onDblClick",
        function (_)
            if rrpg.getMesaDe(sheet).meuJogador.isMestre then
                  sheet.nivelM = 5
                  sheet.nivelMM = 1
                  sheet.ForcaM = 0
                  sheet.HabilidadeM = 0
                  sheet.InteligenciaM = 0
                  sheet.SorteM = 0
                  sheet.PercepcaoM = 0
                  sheet.VigorM = 0
                  else
                  showMessage("Peça para o mestre fazer isso para você")
                 end;
        end, obj);

    obj._e_event3 = obj.button2:addEventListener("onClick",
        function (_)
            --- Add os ponto aq 
            			   if rrpg.getMesaDe(sheet).meuJogador.isMestre then
            			   sheet.nivelMM = (sheet.nivelMM or 0) +1;
            			   sheet.nivelM = (sheet.nivelM or 0) +1;
            			     else 
            				 showMessage("Você não possui permissões aqui, OTARIO!")
            		end;
        end, obj);

    obj._e_event4 = obj.button2:addEventListener("onMenu",
        function (_, x, y)
            --- tira os pontos aqui 
            			   if rrpg.getMesaDe(sheet).meuJogador.isMestre then
                     sheet.NivelMM = (sheet.NivelMM or 0) -1;
                     sheet.NivelM = (sheet.NivelMM or 0) -1;
                  
                     
            			     else 
            				 showMessage("Você não possui permissões aqui, OTARIO!")
            		end;
        end, obj);

    obj._e_event5 = obj.button3:addEventListener("onClick",
        function (_)
            --- Aqui fica os evento de rolll automatizado.
            					local rolagem = rrpg.interpretarRolagem("1d20 + " .. (sheet.HabilidadeM or "0"));
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Habilidade de " .. (sheet.nome or "[§K4][§B]*Coloque um nome em seu mascote*[§K4]"));
        end, obj);

    obj._e_event6 = obj.button4:addEventListener("onClick",
        function (_)
            local nivelM = (sheet.nivelM or 0) -1;
            		    if nivelM >= 0 then
            			 sheet.nivelM = nivelM; sheet.ForcaM = (sheet.ForcaM or 0) +1;
            	                 	else 
            	          showMessage("Você não tem pontos para destribuir!")    
                     end;
        end, obj);

    obj._e_event7 = obj.button5:addEventListener("onClick",
        function (_)
            --- Aqui fica os evento de rolll automatizado.
            					local rolagem = rrpg.interpretarRolagem("1d20 + " .. (sheet.ForcaM or "0"));
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Força de " .. (sheet.nome or "[§K4][§B]Coloque um nome em seu mascote[§K4]"));
        end, obj);

    obj._e_event8 = obj.button6:addEventListener("onClick",
        function (_)
            local nivelM = (sheet.nivelM or 0) -1;
            		    if nivelM >= 0 then
            			 sheet.nivelM = nivelM; sheet.HabilidadeM = (sheet.HabilidadeM or 0) +1;
            	                 	else 
            	          showMessage("Você não tem pontos para destribuir!")    
                     end;
        end, obj);

    obj._e_event9 = obj.button7:addEventListener("onClick",
        function (_)
            --- Aqui fica os evento de rolll automatizado.
            					local rolagem = rrpg.interpretarRolagem("1d20 + " .. (sheet.InteligenciaM or "0"));
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Inteligência de " .. (sheet.nome or "[§K4][§B]Coloque um nome em seu mascote[§K4]"));
        end, obj);

    obj._e_event10 = obj.button8:addEventListener("onClick",
        function (_)
            local nivelM = (sheet.nivelM or 0) -1;
            		    if nivelM >= 0 then
            			 sheet.nivelM = nivelM; sheet.InteligenciaM = (sheet.InteligenciaM or 0) +1;
            	                 	else 
            	          showMessage("Você não tem pontos para destribuir!")    
                     end;
        end, obj);

    obj._e_event11 = obj.button9:addEventListener("onClick",
        function (_)
            --- Aqui fica os evento de rolll automatizado.
            					local rolagem = rrpg.interpretarRolagem("1d20 + " .. (sheet.PercepcaoM or "0"));
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Percepção de " .. (sheet.nome or "[§K4][§B]Coloque um nome em seu mascote[§K4]"));
        end, obj);

    obj._e_event12 = obj.button10:addEventListener("onClick",
        function (_)
            local nivelM = (sheet.nivelM or 0) -1;
            		    if nivelM >= 0 then
            			 sheet.nivelM = nivelM; sheet.PercepcaoM = (sheet.PercepcaoM or 0) +1;
            	                 	else 
            	          showMessage("Você não tem pontos para destribuir!")    
                     end;
        end, obj);

    obj._e_event13 = obj.button11:addEventListener("onClick",
        function (_)
            --- Aqui fica os evento de rolll automatizado.
            					local rolagem = rrpg.interpretarRolagem("1d20 + " .. (sheet.VigorM or "0"));
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Vigor de " .. (sheet.nome or "[§K4][§B]Coloque um nome em seu mascote[§K4]"));
        end, obj);

    obj._e_event14 = obj.button12:addEventListener("onClick",
        function (_)
            local nivelM = (sheet.nivelM or 0) -1;
            		    if nivelM >= 0 then
            			 sheet.nivelM = nivelM; sheet.VigorM = (sheet.VigorM or 0) +1;
            	                 	else 
            	          showMessage("Você não tem pontos para destribuir!")    
                     end;
        end, obj);

    obj._e_event15 = obj.button13:addEventListener("onClick",
        function (_)
            --- Aqui fica os evento de rolll automatizado.
            					local rolagem = rrpg.interpretarRolagem("1d20 + " .. (sheet.SorteM or "0"));
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Sorte de " .. (sheet.nome or "[§K4][§B]Coloque um nome em seu mascote[§K4]"));
        end, obj);

    obj._e_event16 = obj.button14:addEventListener("onClick",
        function (_)
            local nivelM = (sheet.nivelM or 0) -1;
            		    if nivelM >= 0 then
            			 sheet.nivelM = nivelM; sheet.SorteM = (sheet.SorteM or 0) +1;
            	                 	else 
            	          showMessage("Você não tem pontos para destribuir!")    
                     end;
        end, obj);

    obj._e_event17 = obj.button15:addEventListener("onClick",
        function (_)
            local ForcaM = (sheet.ForcaM or 0) -1;
            		    if ForcaM >= 0 then
            			 sheet.ForcaM = ForcaM;sheet.NivelM = (sheet.NivelM or 0) +1;
            	                 	else 
            	          showMessage("Calma ae, não tem mais nada aqui!")    
                     end;
        end, obj);

    obj._e_event18 = obj.button16:addEventListener("onClick",
        function (_)
            local HabilidadeM = (sheet.HabilidadeM or 0) -1;
            		    if HabilidadeM >= 0 then
            			 sheet.HabilidadeM = HabilidadeM;sheet.NivelM = (sheet.NivelM or 0) +1;
            	                 	else 
            	          showMessage("Calma ae, não tem mais nada aqui!")   
                     end;
        end, obj);

    obj._e_event19 = obj.button17:addEventListener("onClick",
        function (_)
            local InteligenciaM = (sheet.InteligenciaM or 0) -1;
            		    if InteligenciaM >= 0 then
            			 sheet.InteligenciaM = InteligenciaM;sheet.NivelM = (sheet.NivelM or 0) +1;
            	                 	else 
            	          showMessage("Calma ae, não tem mais nada aqui!")   
                     end;
        end, obj);

    obj._e_event20 = obj.button18:addEventListener("onClick",
        function (_)
            local PercepcaoM = (sheet.PercepcaoM or 0) -1;
            		    if PercepcaoM >= 0 then
            			 sheet.PercepcaoM = PercepcaoM;sheet.NivelM = (sheet.NivelM or 0) +1;
            	                 	else 
            	          showMessage("Sem vigor você não tem vida.")   
                     end;
        end, obj);

    obj._e_event21 = obj.button19:addEventListener("onClick",
        function (_)
            local VigorM = (sheet.VigorM or 0) -1;
            		    if VigorM >= 0 then
            			 sheet.VigorM = VigorM;sheet.NivelM = (sheet.NivelM or 0) +1;
            	                 	else 
            	          showMessage("Calma ae, não tem mais nada aqui!")   
                     end;
        end, obj);

    obj._e_event22 = obj.button20:addEventListener("onClick",
        function (_)
            local SorteM = (sheet.SorteM or 0) -1;
            		    if SorteM >= 0 then
            			 sheet.SorteM = SorteM;sheet.NivelM = (sheet.NivelM or 0) +1;
            	                 	else 
            	          showMessage("Somente o mestre tem permissões para queimar a sorte!")   
                     end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.progressBar1 ~= nil then self.progressBar1:destroy(); self.progressBar1 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmMassacote()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmMassacote();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmMassacote = {
    newEditor = newfrmMassacote, 
    new = newfrmMassacote, 
    name = "frmMassacote", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmMassacote = _frmMassacote;
Firecast.registrarForm(_frmMassacote);

return _frmMassacote;
