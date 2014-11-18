require 'test_helper'

class ExamesPacientesControllerTest < ActionController::TestCase
  setup do
    @exames_paciente = exames_pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exames_pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exames_paciente" do
    assert_difference('ExamesPaciente.count') do
      post :create, exames_paciente: { exame_id: @exames_paciente.exame_id, medico_id: @exames_paciente.medico_id, paciente_id: @exames_paciente.paciente_id, quantidade: @exames_paciente.quantidade, valor: @exames_paciente.valor }
    end

    assert_redirected_to exames_paciente_path(assigns(:exames_paciente))
  end

  test "should show exames_paciente" do
    get :show, id: @exames_paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exames_paciente
    assert_response :success
  end

  test "should update exames_paciente" do
    patch :update, id: @exames_paciente, exames_paciente: { exame_id: @exames_paciente.exame_id, medico_id: @exames_paciente.medico_id, paciente_id: @exames_paciente.paciente_id, quantidade: @exames_paciente.quantidade, valor: @exames_paciente.valor }
    assert_redirected_to exames_paciente_path(assigns(:exames_paciente))
  end

  test "should destroy exames_paciente" do
    assert_difference('ExamesPaciente.count', -1) do
      delete :destroy, id: @exames_paciente
    end

    assert_redirected_to exames_pacientes_path
  end
end
