control 'AT-02(04)' do
  impact 0.5
  title "literacy training on recognizing suspicious communications and anomalous behavior in organizational systems using #{input('at_02_04_odp')} is provided."
  desc <<~DESC
    Provide literacy training on recognizing suspicious communications and anomalous behavior in organizational systems using #{input('at_02_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      literacy training on recognizing suspicious communications and anomalous behavior in organizational systems using #{input('at_02_04_odp')} is provided.

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; literacy training and awareness policy; procedures addressing literacy training and awareness implementation; literacy training and awareness curriculum; literacy training and awareness materials; other relevant documents or records
      INTERVIEW: Organizational personnel who receive literacy training and awareness; organizational personnel with responsibilities for basic literacy training and awareness; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A well-trained workforce provides another organizational control that can be employed as part of a defense-in-depth strategy to protect against malicious code coming into organizations via email or the web applications. Personnel are trained to look for indications of potentially suspicious email (e.g., receiving an unexpected email, receiving an email containing strange or poor grammar, or receiving an email from an unfamiliar sender that appears to be from a known sponsor or contractor). Personnel are also trained on how to respond to suspicious email or web communications. For this process to work effectively, personnel are trained and made aware of what constitutes suspicious communications. Training personnel on how to recognize anomalous behaviors in systems can provide organizations with early warning for the presence of malicious code. Recognition of anomalous behavior by organizational personnel can supplement malicious code detection and protection tools and systems employed by organizations.
  GUIDANCE
  tag nist: ['AT-2 (4)']
  tag control: 'AT-2 (4)'
  tag objective: 'AT-02(04)'
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{}
  tag control_at_2_4: true
  tag odp: %w{at_02_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective AT-02(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
