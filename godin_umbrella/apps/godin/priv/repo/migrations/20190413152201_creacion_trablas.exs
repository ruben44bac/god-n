defmodule Godin.Repo.Migrations.CreacionTrablas do
  use Ecto.Migration

  def change do
    create table(:institucion) do
        add :nombre, :string

        timestamps()
    end

    create table(:grado) do
      add :nombre_grado, :string

      timestamps()
    end

    create table(:area) do
      add :nombre_area, :string

      timestamps()
    end

    create table(:habilidad) do
      add :nombre_habilidad, :string
      add :nivel_habilidad, :integer

      timestamps()
    end

    create table(:especialidad) do
      add :nombre_especialidad, :string
      add :area_id, references(:area)

      timestamps()
    end

    create table(:estudio) do
      add :nombre_estudio, :string
      add :grado_id, references(:grado)

      timestamps()
    end

    create table(:estudio_institucion) do
      add :estudio_id, references(:estudio)
      add :institucion_id, references(:institucion)

      timestamps()
    end

    create table(:puesto) do
      add :nombre_puesto, :string
      add :descripcion_puesto, :string
      add :especialidad_id, references(:especialidad)

      timestamps()
    end

    create table(:direccion) do
      add :calle, :string
      add :colonia, :string
      add :numero_exterior, :string
      add :codigo_postal, :integer
      add :municipio, :string
      add :pais, :string

      timestamps()
    end

    create table(:empresa) do
      add :razon_social, :string
      add :telefono, :integer
      add :correo, :string
      add :giro, :string
      add :direccion_id, references(:direccion)

      timestamps()
    end

    create table(:ubicacion_empresa) do
      add :empresa_id, references(:empresa)
      add :direccion_id, references(:direccion)

      timestamps()
    end

    create table(:vacante) do
      add :descripcion, :string
      add :sueldo, :decimal
      add :puesto_id, references(:puesto)
      add :estudio_id, references(:estudio)
      add :ubicacion_empresa_id, references(:ubicacion_empresa)

      timestamps()
    end

    create table(:usuario) do
      add :nombre, :string
      add :apellido_paterno, :string
      add :apellido_materno, :string
      add :telefono, :integer
      add :correo, :string
      add :tipo_usuario, :integer
      add :foto_usuario, :string
      add :contrasena_usuario, :string
      add :fecha_nacimiento, :date

      timestamps()
    end

    create table(:portafolio_evidencia) do
      add :nombre_portafolio_evidencia, :string
      add :descripcion, :string
      add :archivo, :string
      add :usuario_id, references(:usuario)

      timestamps()
    end

    create table(:sesion) do
      add :fecha_inicial, :utc_datetime
      add :fecha_final, :utc_datetime
      add :sesion_hash, :string
      add :usuario_id, references(:usuario)

      timestamps()
    end

    create table(:calificacion_empresa) do
      add :calificacion_empresa, :decimal
      add :descripcion, :string
      add :fecha_registro, :utc_datetime
      add :empresa_id, references(:empresa)
      add :usuario_id, references(:usuario)

      timestamps()
    end

    create table(:usuario_habilidad) do
      add :habilidad_id, references(:habilidad)
      add :usuario_id, references(:usuario)

      timestamps()
    end

    create table(:usuario_puesto_empresa) do
      add :descripcion, :string
      add :fecha_inicio, :utc_datetime
      add :fecha_fin, :utc_datetime
      add :usuario_id, references(:usuario)
      add :puesto_id, references(:puesto)
      add :ubicacion_empresa_id, references(:ubicacion_empresa)

      timestamps()
    end

    create table(:usuario_estudio) do
      add :fecha_inicio, :utc_datetime
      add :fecha_fin, :utc_datetime
      add :usuario_id, references(:usuario)
      add :estudio_institucion_id, references(:estudio_institucion)

      timestamps()
    end


  end

end
