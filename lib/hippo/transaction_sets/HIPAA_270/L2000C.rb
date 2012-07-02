module Hippo::TransactionSets
  module HIPAA_270

    class L2000C < Hippo::TransactionSets::Base
      loop_name 'L2000C'    #Subscriber Level

      #Subscriber Level
      segment Hippo::Segments::HL,
                :name           => 'Subscriber Level',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100,
                :identified_by => {
                  'HL03' => '22',
                  'HL04' => ["0", "1"]
                }

      #Subscriber Trace Number
      segment Hippo::Segments::TRN,
                :name           => 'Subscriber Trace Number',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 200,
                :identified_by => {
                  'TRN01' => '1'
                }

      #Subscriber Name
      loop    Hippo::TransactionSets::HIPAA_270::L2100C,
                :name           => 'Subscriber Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 300,
                :identified_by => {
                  'NM1.NM101' => 'IL',
                  'NM1.NM102' => ["1", "2"]
                }

    end
  end
end