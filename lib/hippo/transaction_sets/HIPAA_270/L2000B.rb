module Hippo::TransactionSets
  module HIPAA_270

    class L2000B < Hippo::TransactionSets::Base
      loop_name 'L2000B'    #Information Receiver Level

      #Information Receiver Level
      segment Hippo::Segments::HL,
                :name           => 'Information Receiver Level',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100,
                :identified_by => {
                  'HL03' => '21',
                  'HL04' => '1'
                }

      #Information Receiver Name
      loop    Hippo::TransactionSets::HIPAA_270::L2100B,
                :name           => 'Information Receiver Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 300,
                :identified_by => {
                  'NM1.NM101' => ["1P", "2B", "36", "80", "FA", "GP", "P5", "PR"],
                  'NM1.NM102' => ["1", "2"],
                  'NM1.NM108' => ["24", "34", "FI", "PI", "PP", "SV", "XV", "XX"]
                }

    end
  end
end