control 'SI-10(02)[02]' do
  impact 0.5
  title "input validation errors are resolved within #{input('si_10_02_odp_02')}."
  desc <<~DESC
    Review and resolve input validation errors within #{input('si_10_2_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      input validation errors are resolved within #{input('si_10_02_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing information input validation; system design documentation; system configuration settings and associated documentation; review records of information input validation errors and resulting resolutions; information input validation error logs or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for information input validation; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for the review and resolution of input validation errors; mechanisms supporting and/or implementing the review and resolution of input validation errors
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Resolution of input validation errors includes correcting systemic causes of errors and resubmitting transactions with corrected input. Input validation errors are those related to the information inputs defined by the organization in the base control ( [SI-10](#si-10)).
  GUIDANCE
  tag nist: ['SI-10 (2)']
  tag control: 'SI-10 (2)'
  tag objective: 'SI-10(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_10_2: true
  tag odp: %w{si_10_02_odp_02 si_10_2_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SI-10(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
