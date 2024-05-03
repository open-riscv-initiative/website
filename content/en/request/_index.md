---
title: Request a server
menu: {main: {weight: 50}}
---

{{% blocks/section color="white"%}}
<h4>
Here you can request a RISC-V machine if you work on an open-source software.

In order to access the machine, we will need your SSH Public Key and your GitHub information.

The requests are reviewed and processed manually.
</h4>

<h4>
We do not ask you any personal information, however we need your email address in order to contact you.
</h4>



<br />
<form action="https://fabform.io/f/hGyyUYB" method="POST">
  <div class="mb-3">
    <label for="username" class="form-label">Username*</label>
    <input type="username" class="form-control" id="username" name="username" required="required">
  </div>
  <div class="mb-3">
    <label for="email" class="form-label">Email address*</label>
    <input type="email" class="form-control" id="email" name="email" required="required">
  </div>
  <div class="mb-3">
    <label for="gitProject" class="form-label">Git project link*</label>
    <input type="url" class="form-control" id="gitProject" name="gitProject" required="required">
  </div>

  <div class="mb-3">
    <label for="ssh" class="form-label">SSH Public Key*</label>
    <input type="text" class="form-control" id="ssh" name="ssh" required="required">
  </div>
  
  <div class="card mb-3">
    <div class="card-body">
        <h3>Machine specifications</h3>
        <div class="mb-3">
            <label for="soc" class="form-label">SoC</label>
            <select id="soc" name="soc" class="form-select" aria-label="SoC">
                <option selected="selected">JH7110</option>
                <option>C910</option>
                <option>C920</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="ram" class="form-label">RAM</label>
            <select id="ram" name="ram" class="form-select" aria-label="RAM">
                <option selected="selected">512 MB</option>
                <option>1 GB</option>
                <option>2 GB</option>
                <option>4 GB</option>
                <option>6 GB</option>
                <option>8 GB</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="cpu" class="form-label">CPU</label>
            <select id="cpu" name="cpu" class="form-select" aria-label="CPU">
                <option selected="selected">1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="disk" class="form-label">Storage</label>
            <select id="disk" name="disk" class="form-select" aria-label="Storage">
                <option selected="selected">8 GB</option>
                <option>16 GB</option>
                <option>32 GB</option>
                <option>64 GB</option>
                <option>128 GB</option>
            </select>
        </div>
    </div>
  </div>

  <div class="mb-3">
    <label for="emailAddress" class="form-label">Message</label>
    <textarea if="message" class="form-control" name="message" rows="5"></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
{{% /blocks/section %}}