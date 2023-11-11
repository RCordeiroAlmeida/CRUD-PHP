<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-9 col-xs-8">
        <h2>Usuários</h2>
        <ol class="breadcrumb">
            <li>
                <a href="?module=cadastro&acao=lista_usuario">Usuário</a>
            </li>
            <li class="active">
                <strong>Novo</strong>
            </li>
        </ol>
    </div>

    <div class="col-lg-3 col-xs-4" style="text-align:right;">
        <br /><br />
        <button class="btn btn-primary" onclick="$('#MyForm').valid() ? enviar():'';" type="submit"><i class="fa fa-check"></i><span class="hidden-xs hidden-sm"> Salvar</span></button>
        <button class="btn btn-default" onclick="voltar();" type="button"><i class="fa fa-times"></i><span class="hidden-xs hidden-sm"> Cancelar</span></button>
    </div>
</div>
<div id="result_var"></div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>Formulário de Cadastro</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
            </div>
        </div>
    </div>
    <div class="ibox-content">
        <form action="?module=cadastro&acao=grava_usuario" id="MyForm" method="post" enctype="multipart/form-data" name="MyForm">
           <div class="row form-group">
                <div class="col-sm-6">
                    <label for="usu_nome" class="control-label">Nome de usuário:</label>
                    <input type="text" class="form-control blockenter" id="usu_nome" name="usu_nome" style="text-transform:uppercase" required>
                </div>
                <div class="col-sm-3">
                    <label for="usu_login" class="control-label">Login:</label>
                    <input type="text" class="form-control blockenter" id="usu_login" name="usu_login" required>
                </div>
                <div class="col-sm-3">
                    <label for="usu_senha" class="control-label">Senha:</label>
                    <input type="password" class="form-control blockenter" id="usu_senha" name="usu_senha" required>
                </div>
           </div> 
           <div class="row form-group">
                <div class="col-sm-6">
                    <label for="usu_email" class="control-label">E-mail:</label>
                    <input type="text" class="form-control blockenter" id="usu_email" name="usu_email" required>
                </div>
                <div class="col-sm-3">
                    <label for="usu_nivel" class="control-label">Nível</label>
                    <select class="form-control selectpicker" data-live-search="true" data-size="6" name="usu_nivel" id="usu_nivel" required>
                        <option value="" disabled selected>--Selecione--</option>
                        <option value="admin">Administrador</option>
                        <option value="vendedor">Vendedor</option>
                        <option value="usuario">Usuário</option>
                    </select>
                </div>
           </div>        
        </form>
    </div>


<script>
    
    function setor(id){
        if (id == 2){
            document.getElementById('cid_cod').style.display = 'block';
            document.getElementById('cid_cod').removeAttribute('disabled', 'disabled');
            document.getElementById('cid_cod').setAttribute('required', 'required');

        }else{
            document.getElementById('cid_cod').style.display = 'none';
            document.getElementById('cid_cod').setAttribute('disabled', 'disabled');
            document.getElementById('cid_cod').removeAttribute('required', 'required');
        }
    }

    function enviar() {
        document.forms['MyForm'].submit();
    }

    function voltar() {
        window.location.href = '?module=cadastro&acao=lista_usuario';
    }

    $(document).ready(function() {

        $("#MyForm").validate({
            rules: {
                cli_nome: {
                    required: true,
                    minlength: 3
                },
                cid_codigo: {
                    required: true
                }
            }
        });
        $("#MyForm").submit(function(event) {
            document.forms['MyForm'].submit();
        });
    });
</script>