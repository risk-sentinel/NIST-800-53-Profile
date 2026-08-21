control 'MP-05a.[01]' do
  impact 0.5
  title "#{input('mp_05_odp_01')} are protected during transport outside of controlled areas using #{input('mp_05_odp_02')};"
  desc <<~DESC
    a. Protect and control #{input('mp_05_odp_01')} during transport outside of controlled areas using #{input('mp_5_prm_2')};
    b. Maintain accountability for system media during transport outside of controlled areas;
    c. Document activities associated with the transport of system media; and
    d. Restrict the activities associated with the transport of system media to authorized personnel.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('mp_05_odp_01')} are protected during transport outside of controlled areas using #{input('mp_05_odp_02')};

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media storage; physical and environmental protection policy and procedures; access control policy and procedures; authorized personnel list; system media; designated controlled areas; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media protection and storage responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for storing information media; mechanisms supporting and/or implementing media storage/media protection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System media includes digital and non-digital media. Digital media includes flash drives, diskettes, magnetic tapes, external or removable hard disk drives (e.g., solid state and magnetic), compact discs, and digital versatile discs. Non-digital media includes microfilm and paper. Controlled areas are spaces for which organizations provide physical or procedural controls to meet requirements established for protecting information and systems. Controls to protect media during transport include cryptography and locked containers. Cryptographic mechanisms can provide confidentiality and integrity protections depending on the mechanisms implemented. Activities associated with media transport include releasing media for transport, ensuring that media enters the appropriate transport processes, and the actual transport. Authorized transport and courier personnel may include individuals external to the organization. Maintaining accountability of media during transport includes restricting transport activities to authorized personnel and tracking and/or obtaining records of transport activities as the media moves through the transportation system to prevent and detect loss, destruction, or tampering. Organizations establish documentation requirements for activities associated with the transport of system media in accordance with organizational assessments of risk. Organizations maintain the flexibility to define record-keeping methods for the different types of media transport as part of a system of transport-related records.
  GUIDANCE
  tag nist: ['MP-5']
  tag control: 'MP-5'
  tag objective: 'MP-05a.[01]'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_mp_5: true
  tag odp: %w{mp_05_odp_01 mp_05_odp_02 mp_5_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective MP-05a.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
