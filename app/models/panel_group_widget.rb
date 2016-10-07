class PanelGroupWidget < Widget

  def self.layout_types
    %w[
      tabs-top
      tabs-left
      accordion
      carousel
    ]
  end

  attribute :layout_type, :enum, values: layout_types, default: layout_types.first
  attribute :panels, :widgetlist
  attribute :docs, :link

  default_for :panels do |attribute, scrivito_user|
    [
      PanelWidget.new(title: "First Panel"),
      PanelWidget.new(title: "Second Panel"),
      PanelWidget.new(title: "Third Panel"),
    ]
  end

   default_for :docs do |attribute, scrivito_user|
    [
      DocWidget.new(title: "test 1"),
      DocWidget.new(title: "test 2"),
      DocWidget.new(title: "test 3"),
    ]
  end

  def valid_widget_classes_for(field_name)
    [PanelWidget, DocWidget]
  end

  def text_extract
    panels.map(&:text_extract)
  end

  def self.info_text_for_thumbnail
    "Panel Group with several layout options including "\
        "tab group, accordion, and carousel."
  end

end
