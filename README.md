<html><head><meta charset="utf-8"><title></title><style></style></head><body id="preview">
<h1><a id="Congress_to_CSV_0"></a>Congress to CSV</h1>
<h3><a id="Synopsis_3"></a>Synopsis</h3>
<p>The purpose of this project is to pull the data from the propublica congress API and write to a CSV. The goal is to have a cron job automate the task every day.</p>
<h3><a id="Tasks_7"></a>Tasks</h3>
<ul>
<li><strike>Create Project</strike></li>
<li><strike>Create git and upload to Github</strike></li>
<li><strike>Get API Key</strike></li>
<li><strike>Connect to API and extract data to file</strike></li>
<li><strike>Parse data to CSV</strike></li>
<li><strike>Format CSV data into columns</strike></li>
<li>Create main script to run other scripts druing cron/scheduled task</li>
<li>Populate Sponsor column with Sponsor name, replacing .JSON link</li>
<li><strike>Add Column headers to CSV file</strike></li>
<li>Create seperate files for Senate and House</li>
<li>Name output files with date created</li>
<li>reate cron jubs for creating JSON files</li>
<li>Create cron jubs for creating CSV files</li>
<li>Find optimal delivery or download solution (option list below)</li>
<li>Upload to server</li>
</ul>
<h5><a id="Delivery_Options_23"></a>Delivery Options</h5>
<ul>
<li>AWS Lambda (not familiar with this delivery platform)</li>
<li>Heroku
<ul>
<li>Action Mailer to send file to email everyday</li>
<li>Host file with download link</li>
</ul>
</li>
</ul>
<h3><a id="Gems_32"></a>Gems</h3>
<p>curb |  <a href="https://github.com/taf2/curb">https://github.com/taf2/curb</a><br>
curb-fu | <a href="https://github.com/gdi/curb-fu">https://github.com/gdi/curb-fu</a><br>
rspec | <a href="https://github.com/rspec/rspec">https://github.com/rspec/rspec</a><br>
json | <a href="https://github.com/flori/json">https://github.com/flori/json</a></p>
<h3><a id="Motivation_39"></a>Motivation</h3>
<p>In support of a politically active organization</p>
<h3><a id="Contributors_44"></a>Contributors</h3>
<p>Steven Antonio (me) | <a href="http://stevenanton.io">http://stevenanton.io</a></p>
<h3><a id="License_49"></a>License</h3>
<h1><a id="The_MIT_License_MIT_51"></a>The MIT License (MIT)</h1>
<p>Copyright © <code>2017</code> <code>Steven A. Pastrana</code></p>
<p>Permission is hereby granted, free of charge, to any person<br>
obtaining a copy of this software and associated documentation<br>
files (the “Software”), to deal in the Software without<br>
restriction, including without limitation the rights to use,<br>
copy, modify, merge, publish, distribute, sublicense, and/or sell<br>
copies of the Software, and to permit persons to whom the<br>
Software is furnished to do so, subject to the following<br>
conditions:</p>
<p>The above copyright notice and this permission notice shall be<br>
included in all copies or substantial portions of the Software.</p>
<p>THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,<br>
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES<br>
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND<br>
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT<br>
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,<br>
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING<br>
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR<br>
OTHER DEALINGS IN THE SOFTWARE.</p>

</body></html>
