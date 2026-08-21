control 'PE-20' do
  impact 0.5
  title "#{input('pe_20_odp_01')} are employed to track and monitor the location and movement of #{input('pe_20_odp_02')} within #{input('pe_20_odp_03')}."
  desc <<~DESC
    Employ #{input('pe_20_odp_01')} to track and monitor the location and movement of #{input('pe_20_odp_02')} within #{input('pe_20_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('pe_20_odp_01')} are employed to track and monitor the location and movement of #{input('pe_20_odp_02')} within #{input('pe_20_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing asset monitoring and tracking; documentation showing the use of asset location technologies; system configuration documentation; list of organizational assets requiring tracking and monitoring; asset monitoring and tracking records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with asset monitoring and tracking responsibilities; legal counsel; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for tracking and monitoring assets; mechanisms supporting and/or implementing the tracking and monitoring of assets
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Asset location technologies can help ensure that critical assets—including vehicles, equipment, and system components—remain in authorized locations. Organizations consult with the Office of the General Counsel and senior agency official for privacy regarding the deployment and use of asset location technologies to address potential privacy concerns.
  GUIDANCE
  tag nist: ['PE-20']
  tag control: 'PE-20'
  tag objective: 'PE-20'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_20: true
  tag odp: %w{pe_20_odp_01 pe_20_odp_02 pe_20_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective PE-20' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
