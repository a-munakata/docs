# encoding: utf-8

require "preamble"

class Entry
  attr_accessor :header,
                :body,
                :title,
                :file_name,
                :category_id,
                :priority,
                :is_disabled,
                :method,
                :parent_klass,
                :action,
                :request_path

  def initialize(doc_file, options=nil)
    @_header, @_body = Preamble.load(doc_file)
    @_base_name      = File.basename(doc_file, ".md")
  end

  def header;       @_header                 end
  def body;         @_body                   end
  def title;        @_header["title"]        end
  def base_name;    @_base_name              end
  def is_disabled;  @_header["is_disabled"]  end
  def action;       @_header["action"]       end
  def parent_klass; @_header["parent_klass"] end

  def order_index
    order.index(action.try(:to_sym)).present? ? order.index(action.try(:to_sym)) : 999
  end

  def parent_klass_order_index
    parent_klass_order.index(parent_klass.try(:to_sym)).present? ? parent_klass_order.index(parent_klass.try(:to_sym)) : 999
  end

  def method
    @_body.match(/(?<=`).*(?=`)/).to_s.match(/[A-Z]*(?=\s)/).to_s.downcase.to_sym
  end

  def request_path
    @_body.match(/(?<=`).*(?=`)/).to_s.gsub(/.*\/api\/.*?\/.*?/,"/")
  end

  def category_name
    @_header["category_name"].to_sym
  end

  def static_response
    response = @_body.scan(/レスポンス例.*?}$/m).
      first.
      gsub(/レスポンス例\n/, "").
      gsub(/,\n?\s\s\{\.\.\.},\n\s\s\{\.\.\.}/, "")

    @_body.match(/^\[/) ? JSON.parse(response + "]").first : JSON.parse(response)
  end

  private
  def order
    [
      :create,
      :publish,
      :abort,
      :index,
      :update,
      :show,
      :delete
    ]
  end

  def parent_klass_order
    [
      :question,
      :answer_item,
      :sub_item,
      :collector,
      :segment
    ]
  end
end