# frozen_string_literal: true

# A class representing a position template, which represents the
# location of the template associated with a position contract.
class ContractTemplate < ApplicationRecord
    belongs_to :session

    validates_uniqueness_of :template_name, scope: [:session]
    validates_presence_of :template_name, :template_file

    scope :by_session, ->(session_id) { where(session: session_id).order(:id) }
end

# == Schema Information
#
# Table name: contract_templates
#
#  id            :integer          not null, primary key
#  session_id    :integer          not null
#  template_name :string
#  template_file :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_contract_templates_on_session_id  (session_id)
#
