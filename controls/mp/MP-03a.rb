control 'MP-03a.' do
  impact 0.5
  title "system media is marked to indicate distribution limitations, handling caveats, and applicable security markings (if any) of the information;"
  desc <<~DESC
    a. Mark system media indicating the distribution limitations, handling caveats, and applicable security markings (if any) of the information; and
    b. Exempt #{input('mp_03_odp_01')} from marking if the media remain within #{input('mp_03_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system media is marked to indicate distribution limitations, handling caveats, and applicable security markings (if any) of the information;

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media marking; physical and environmental protection policy and procedures; list of system media marking security attributes; designated controlled areas; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media protection and marking responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for marking information media; mechanisms supporting and/or implementing media marking
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security marking refers to the application or use of human-readable security attributes. Digital media includes diskettes, magnetic tapes, external or removable hard disk drives (e.g., solid state, magnetic), flash drives, compact discs, and digital versatile discs. Non-digital media includes paper and microfilm. Controlled unclassified information is defined by the National Archives and Records Administration along with the appropriate safeguarding and dissemination requirements for such information and is codified in [32 CFR 2002](#91f992fb-f668-4c91-a50f-0f05b95ccee3) . Security markings are generally not required for media that contains information determined by organizations to be in the public domain or to be publicly releasable. Some organizations may require markings for public information indicating that the information is publicly releasable. System media marking reflects applicable laws, executive orders, directives, policies, regulations, standards, and guidelines.
  GUIDANCE
  tag nist: ['MP-3']
  tag control: 'MP-3'
  tag objective: 'MP-03a.'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_mp_3: true
  tag odp: %w{mp_03_odp_01 mp_03_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective MP-03a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
