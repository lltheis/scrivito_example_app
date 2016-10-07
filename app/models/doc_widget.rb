class DocWidget < Widget

  attribute :title, :string, default: "Doc"

  def self.valid_container_classes
    [PanelGroupWidget]
  end

  def text_extract
    content.map(&:text_extract)
  end

  def self.info_text_for_thumbnail
    "This is Laura's test"
  end

end