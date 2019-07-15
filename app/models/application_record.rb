# frozen_string_literal: true

#
# Basic record
#
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
