control 'PT-7 (1)' do
  impact 0.5
  title 'Social Security Numbers'
  desc <<~DESC
    When a system processes Social Security numbers:
      (a) Eliminate unnecessary collection, maintenance, and use of Social Security numbers, and explore alternatives to their use as a personal identifier;
      (b) Do not deny any individual any right, benefit, or privilege provided by law because of such individual’s refusal to disclose his or her Social Security number; and
      (c) Inform any individual who is asked to disclose his or her Social Security number whether that disclosure is mandatory or voluntary, by what statutory or other authority such number is solicited, and what uses will be made of it.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PT-07(01)(a)
        PT-07(01)(a)[01] when a system processes Social Security numbers, the unnecessary collection, maintenance, and use of Social Security numbers are eliminated;
        PT-07(01)(a)[02] when a system processes Social Security numbers, alternatives to the use of Social Security Numbers as a personal identifier are explored;
      PT-07(01)(b) when a system processes Social Security numbers, individual rights, benefits, or privileges provided by law are not denied because of an individual’s refusal to disclose their Social Security number;
      PT-07(01)(c)
        PT-07(01)(c)[01] when a system processes Social Security numbers, any individual who is asked to disclose their Social Security number is informed whether that disclosure is mandatory or voluntary, by what statutory or other authority such number is solicited, and what uses will be made of it;
        PT-07(01)(c)[02] when a system processes Social Security numbers, any individual who is asked to disclose their Social Security number is informed by what statutory or other authority the number is solicited;
        PT-07(01)(c)[03] when a system processes Social Security numbers, any individual who is asked to disclose their Social Security number is informed what uses will be made of it.

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy notice; Privacy Act system of records; privacy notice; separate notice regarding the use of Social Security numbers; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for identifying, reviewing, and taking action to control the unnecessary use of Social Security numbers; implementation of an alternative to Social Security numbers as identifiers
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Federal law and policy establish specific requirements for organizations’ processing of Social Security numbers. Organizations take steps to eliminate unnecessary uses of Social Security numbers and other sensitive information and observe any particular requirements that apply.
  GUIDANCE
  tag nist: ['PT-7 (1)']
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control PT-7 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
