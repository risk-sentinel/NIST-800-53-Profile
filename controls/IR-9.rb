control 'IR-9' do
  impact 0.5
  title 'Information Spillage Response'
  desc <<~DESC
    Respond to information spills by:
      a. Assigning #{input('ir_09_odp_01')} with responsibility for responding to information spills;
      b. Identifying the specific information involved in the system contamination;
      c. Alerting #{input('ir_09_odp_02')} of the information spill using a method of communication not associated with the spill;
      d. Isolating the contaminated system or system component;
      e. Eradicating the information from the contaminated system or component;
      f. Identifying other systems or system components that may have been subsequently contaminated; and
      g. Performing the following additional actions: #{input('ir_09_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-09a. #{input('ir_09_odp_01')} is/are assigned the responsibility to respond to information spills;
      IR-09b. the specific information involved in the system contamination is identified in response to information spills;
      IR-09c. #{input('ir_09_odp_02')} is/are alerted of the information spill using a method of communication not associated with the spill;
      IR-09d. the contaminated system or system component is isolated in response to information spills;
      IR-09e. the information is eradicated from the contaminated system or component in response to information spills;
      IR-09f. other systems or system components that may have been subsequently contaminated are identified in response to information spills;
      IR-09g. #{input('ir_09_odp_03')} are performed in response to information spills.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing information spillage; incident response plan; system security plan; records of information spillage alerts/notifications; list of personnel who should receive alerts of information spillage; list of actions to be performed regarding information spillage; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for information spillage response; mechanisms supporting and/or implementing information spillage response actions and related communications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information spillage refers to instances where information is placed on systems that are not authorized to process such information. Information spills occur when information that is thought to be a certain classification or impact level is transmitted to a system and subsequently is determined to be of a higher classification or impact level. At that point, corrective action is required. The nature of the response is based on the classification or impact level of the spilled information, the security capabilities of the system, the specific nature of the contaminated storage media, and the access authorizations of individuals with authorized access to the contaminated system. The methods used to communicate information about the spill after the fact do not involve methods directly associated with the actual spill to minimize the risk of further spreading the contamination before such contamination is isolated and eradicated.
  GUIDANCE
  tag nist: ['IR-9']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag odp: %w{ir_09_odp_01 ir_09_odp_02 ir_09_odp_03}

  describe 'NIST SP 800-53 Rev 5 control IR-9' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
