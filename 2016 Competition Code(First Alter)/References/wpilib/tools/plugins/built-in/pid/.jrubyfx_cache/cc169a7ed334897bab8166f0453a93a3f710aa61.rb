# b4925062eadef949cb128dca41ccf80b1fbc91d0 encoding: utf-8
# @@ 1

########################### DO NOT MODIFY THIS FILE ###########################
#       This file was automatically generated by JRubyFX-fxmlloader on        #
# 2016-01-06 20:19:15 -0500 for ../sfx/plugins/built-in/pid/PIDParent.fxml
########################### DO NOT MODIFY THIS FILE ###########################

module JRubyFX
  module GeneratedAssets
    class AOTcc169a7ed334897bab8166f0453a93a3f710aa61
      include JRubyFX
          def __build_via_jit(__local_fxml_controller, __local_namespace, __local_jruby_ext)
      __local_fx_id_setter = lambda do |name, __i|
        __local_namespace[name] = __i
        __local_fxml_controller.instance_variable_set(("@#{name}").to_sym, __i)
      end

build(Java::DashfxControls::DataGridPane) do
 __local_jruby_ext[:on_root_set].call(self) if __local_jruby_ext[:on_root_set]
 with(getUi) do
getChildren.add(build(Java::JavafxSceneControl::Label) do
  setText("P:")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 0)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 0)
 end)
 getChildren.add(build(Java::JavafxSceneControl::Label) do
  setText("I:")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 0)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 1)
 end)
 getChildren.add(build(Java::JavafxSceneControl::Label) do
  setText("D:")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 0)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 2)
 end)
 getChildren.add(build(Java::JavafxSceneControl::Label) do
  setText("FF:")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 0)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 3)
 end)
 getChildren.add(build(Java::JavafxSceneControl::Label) do
  setText("Set:")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 0)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 4)
 end)
 getChildren.add(build(Java::DashfxLibControls::Placeholder) do
  setId("disabled")
  __local_fx_id_setter.call("disabled", self)
  setControlPath("RedGreen")
  setPropList("name: disabled")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 1)
  Java::JavafxSceneLayout::GridPane.setColumnSpan(self, 1)
  Java::JavafxSceneLayout::GridPane.setHalignment(self, Java::javafx::geometry::HPos::CENTER)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 5)
 end)
 getChildren.add(build(Java::DashfxLibControls::Placeholder) do
  setId("d")
  __local_fx_id_setter.call("d", self)
  setControlPath("Number Box")
  setPropList("name: d")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 1)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 2)
 end)
 getChildren.add(build(Java::DashfxLibControls::Placeholder) do
  setId("i")
  __local_fx_id_setter.call("i", self)
  setControlPath("Number Box")
  setPropList("name: i")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 1)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 1)
 end)
 getChildren.add(build(Java::DashfxLibControls::Placeholder) do
  setId("p")
  __local_fx_id_setter.call("p", self)
  setControlPath("Number Box")
  setPropList("name: p")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 1)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 0)
 end)
 getChildren.add(build(Java::DashfxLibControls::Placeholder) do
  setId("ff")
  __local_fx_id_setter.call("ff", self)
  setControlPath("Number Box")
  setPropList("name: f")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 1)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 3)
 end)
 getChildren.add(build(Java::DashfxLibControls::Placeholder) do
  setId("set")
  __local_fx_id_setter.call("set", self)
  setControlPath("Number Box")
  setPropList("name: setpoint")
  Java::JavafxSceneLayout::GridPane.setColumnIndex(self, 1)
  Java::JavafxSceneLayout::GridPane.setRowIndex(self, 4)
 end)
 getColumnConstraints.add(build(Java::JavafxSceneLayout::ColumnConstraints) do
  setHalignment(Java::javafx::geometry::HPos::RIGHT)
  setHgrow(Java::javafx::scene::layout::Priority::SOMETIMES)
  setMinWidth(10.0)
  setPrefWidth(-1.0)
 end)
 getColumnConstraints.add(build(Java::JavafxSceneLayout::ColumnConstraints) do
  setHgrow(Java::javafx::scene::layout::Priority::SOMETIMES)
  setMinWidth(10.0)
  setPrefWidth(100.0)
 end)
 getRowConstraints.add(build(Java::JavafxSceneLayout::RowConstraints) do
  setMinHeight(10.0)
  setPrefHeight(30.0)
  setVgrow(Java::javafx::scene::layout::Priority::SOMETIMES)
 end)
 getRowConstraints.add(build(Java::JavafxSceneLayout::RowConstraints) do
  setMinHeight(10.0)
  setPrefHeight(30.0)
  setVgrow(Java::javafx::scene::layout::Priority::SOMETIMES)
 end)
 getRowConstraints.add(build(Java::JavafxSceneLayout::RowConstraints) do
  setMinHeight(10.0)
  setPrefHeight(30.0)
  setVgrow(Java::javafx::scene::layout::Priority::SOMETIMES)
 end)
 getRowConstraints.add(build(Java::JavafxSceneLayout::RowConstraints) do
  setMinHeight(10.0)
  setPrefHeight(30.0)
  setVgrow(Java::javafx::scene::layout::Priority::SOMETIMES)
 end)
 getRowConstraints.add(build(Java::JavafxSceneLayout::RowConstraints) do
  setMinHeight(10.0)
  setPrefHeight(30.0)
  setVgrow(Java::javafx::scene::layout::Priority::SOMETIMES)
 end)
 getRowConstraints.add(build(Java::JavafxSceneLayout::RowConstraints) do
  setMinHeight(10.0)
  setPrefHeight(30.0)
  setVgrow(Java::javafx::scene::layout::Priority::SOMETIMES)
 end)
 setHgap(6.0)
 setPrefHeight(-1.0)
 setVgap(6.0)
 setStyle("/*Intentionally blank*/")
end
 setDataMode(Java::dashfx::lib::data::DataPaneMode::Nested)
end
    end

      def hash
        "b4925062eadef949cb128dca41ccf80b1fbc91d0"
      end
      def compiled?
        true
      end
    end
  end
end
