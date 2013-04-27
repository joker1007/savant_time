# coding: utf-8
require 'spec_helper'

describe FileEntryDecorator do
  let(:file_entry) { FileEntry.new.extend FileEntryDecorator }
  subject { file_entry }
  it { should be_a FileEntry }
end
