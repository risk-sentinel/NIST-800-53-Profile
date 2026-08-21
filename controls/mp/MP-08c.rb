control 'MP-08c.' do
  impact 0.5
  title "#{input('mp_08_odp_02')} is identified;"
  desc <<~DESC
    a. Establish #{input('mp_08_odp_01')} that includes employing downgrading mechanisms with strength and integrity commensurate with the security category or classification of the information;
    b. Verify that the system media downgrading process is commensurate with the security category and/or classification level of the information to be removed and the access authorizations of the potential recipients of the downgraded information;
    c. Identify #{input('mp_08_odp_02')} ; and
    d. Downgrade the identified system media using the established process.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('mp_08_odp_02')} is identified;

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media downgrading; system categorization documentation; list of media requiring downgrading; records of media downgrading; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media downgrading responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for media downgrading; mechanisms supporting and/or implementing media downgrading
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Media downgrading applies to digital and non-digital media subject to release outside of the organization, whether the media is considered removable or not. When applied to system media, the downgrading process removes information from the media, typically by security category or classification level, such that the information cannot be retrieved or reconstructed. Downgrading of media includes redacting information to enable wider release and distribution. Downgrading ensures that empty space on the media is devoid of information.
  GUIDANCE
  tag nist: ['MP-8']
  tag control: 'MP-8'
  tag objective: 'MP-08c.'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}
  tag control_mp_8: true
  tag odp: %w{mp_08_odp_01 mp_08_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective MP-08c.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
