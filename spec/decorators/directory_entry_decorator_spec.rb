# coding: utf-8
require 'spec_helper'

describe DirectoryEntryDecorator do
  let(:directory_entry) { DirectoryEntry.new.extend DirectoryEntryDecorator }
  subject { directory_entry }
  it { should be_a DirectoryEntry }
end
