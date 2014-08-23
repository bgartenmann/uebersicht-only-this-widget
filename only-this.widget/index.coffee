
todayfile = '~/Desktop/today.txt'

command: "cat #{todayfile}"

refreshFrequency: 5000

style: """
  background-color: rgba(255,255,255,0.6)
  border-radius: 6px
  left: 50%
  top: 30%
  margin-left: -250px
  padding: 0px 20px
  width: 500px
  color: #333
  font-family: Helvetica Neue
  font-weight: 300
  font-size: 24px
  line-height: 1.5
  text-align: justify

  .fillout
  	font-style: italic;
  	text-decoration: underline

  .motivation
    font-size: 30px
    text-align: center
    margin-top: 35px
    padding-top: 20px
    border-top: 1px solid #666
    display: inline-block
    width: 100%;
"""


render: (output) -> 
  placeholder = "_____________"
  outputArray = output.split "*"
  goal = outputArray[0] || placeholder
  step1 = outputArray[1] || placeholder
  step2 = outputArray[2] || placeholder
  step3 = outputArray[3] || placeholder
  """
  <p>If nothing else, today I am going to <span class="fillout">#{goal}</span>.<br />
  I am going to do this by <span class="fillout">#{step1}</span> then <span class="fillout">#{step2}</span> then <span class="fillout">#{step3}</span>.<br />
  <span class="motivation">If I do this and only this,<br /> today will be a <strong>good</strong> day.</span>
  """

  

