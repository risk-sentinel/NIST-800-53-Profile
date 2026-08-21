control 'SI-19(04)' do
  impact 0.5
  title "direct identifiers in a dataset are removed, masked, encrypted, hashed, or replaced."
  desc <<~DESC
    Remove, mask, encrypt, hash, or replace direct identifiers in a dataset.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      direct identifiers in a dataset are removed, masked, encrypted, hashed, or replaced.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; de-identification procedures; system configuration; documentation of de-identified datasets; tools for the removal, masking, encryption, hashing or replacement of direct identifiers; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for de-identifying the dataset; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms supporting and/or implementing the removal, masking, encryption, hashing or replacement of direct identifiers
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    There are many possible processes for removing direct identifiers from a dataset. Columns in a dataset that contain a direct identifier can be removed. In masking, the direct identifier is transformed into a repeating character, such as XXXXXX or 999999. Identifiers can be encrypted or hashed so that the linked records remain linked. In the case of encryption or hashing, algorithms are employed that require the use of a key, including the Advanced Encryption Standard or a Hash-based Message Authentication Code. Implementations may use the same key for all identifiers or use a different key for each identifier. Using a different key for each identifier provides a higher degree of security and privacy. Identifiers can alternatively be replaced with a keyword, including transforming "George Washington" to "PATIENT" or replacing it with a surrogate value, such as transforming "George Washington" to "Abraham Polk."
  GUIDANCE
  tag nist: ['SI-19 (4)']
  tag control: 'SI-19 (4)'
  tag objective: 'SI-19(04)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_19_4: true

  describe 'NIST SP 800-53A Rev 5 objective SI-19(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
