control 'MP-04a.[04]' do
  impact 0.5
  title "#{input('mp_04_odp_04')} are securely stored within #{input('mp_04_odp_06')};"
  desc <<~DESC
    a. Physically control and securely store #{input('mp_4_prm_1')} within #{input('mp_4_prm_2')} ; and
    b. Protect system media types defined in MP-4a until the media are destroyed or sanitized using approved equipment, techniques, and procedures.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('mp_04_odp_04')} are securely stored within #{input('mp_04_odp_06')};

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media storage; physical and environmental protection policy and procedures; access control policy and procedures; system media; designated controlled areas; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media protection and storage responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for storing information media; mechanisms supporting and/or implementing secure media storage/media protection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System media includes digital and non-digital media. Digital media includes flash drives, diskettes, magnetic tapes, external or removable hard disk drives (e.g., solid state, magnetic), compact discs, and digital versatile discs. Non-digital media includes paper and microfilm. Physically controlling stored media includes conducting inventories, ensuring procedures are in place to allow individuals to check out and return media to the library, and maintaining accountability for stored media. Secure storage includes a locked drawer, desk, or cabinet or a controlled media library. The type of media storage is commensurate with the security category or classification of the information on the media. Controlled areas are spaces that provide physical and procedural controls to meet the requirements established for protecting information and systems. Fewer controls may be needed for media that contains information determined to be in the public domain, publicly releasable, or have limited adverse impacts on organizations, operations, or individuals if accessed by other than authorized personnel. In these situations, physical access controls provide adequate protection.
  GUIDANCE
  tag nist: ['MP-4']
  tag control: 'MP-4'
  tag objective: 'MP-04a.[04]'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_mp_4: true
  tag odp: %w{mp_04_odp_04 mp_04_odp_06 mp_4_prm_1 mp_4_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective MP-04a.[04]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
