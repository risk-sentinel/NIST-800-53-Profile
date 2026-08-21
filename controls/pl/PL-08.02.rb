control 'PL-08(02)' do
  impact 0.5
  title "#{input('pl_08_02_odp_01')} that are allocated to #{input('pl_08_02_odp_02')} are required to be obtained from different suppliers."
  desc <<~DESC
    Require that #{input('pl_08_02_odp_01')} allocated to #{input('pl_08_02_odp_02')} are obtained from different suppliers.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('pl_08_02_odp_01')} that are allocated to #{input('pl_08_02_odp_02')} are required to be obtained from different suppliers.

    Assessment methods and objects:
      EXAMINE: Security and privacy planning policy; procedures addressing information security and privacy architecture development; enterprise architecture documentation; information security and privacy architecture documentation; system security plan; privacy plan; security and privacy CONOPS for the system; IT acquisitions policy; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy planning and plan implementation responsibilities; organizational personnel with information security and privacy architecture development responsibilities; organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for obtaining information security and privacy safeguards from different suppliers
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information technology products have different strengths and weaknesses. Providing a broad spectrum of products complements the individual offerings. For example, vendors offering malicious code protection typically update their products at different times, often developing solutions for known viruses, Trojans, or worms based on their priorities and development schedules. By deploying different products at different locations, there is an increased likelihood that at least one of the products will detect the malicious code. With respect to privacy, vendors may offer products that track personally identifiable information in systems. Products may use different tracking methods. Using multiple products may result in more assurance that personally identifiable information is inventoried.
  GUIDANCE
  tag nist: ['PL-8 (2)']
  tag control: 'PL-8 (2)'
  tag objective: 'PL-08(02)'
  tag rev: 'Rev_5'
  tag family: 'Planning'
  tag baseline: %w{}
  tag control_pl_8_2: true
  tag odp: %w{pl_08_02_odp_01 pl_08_02_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PL-08(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
