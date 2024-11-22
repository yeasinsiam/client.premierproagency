 <section id="contact" class="section-8 odd form">
     <div class="container smaller">
         <div class="row text-center intro">
             <div class="col-12">
                 <h2 class="mb-0 super effect-static-text">Let's Talk?</h2>
             </div>
         </div>
         @if (session()->has('success-message'))
             <div wire:ignore class="alert alert-success alert-dismissible fade show mt-2" role="alert">
                 {!! session('success-message') !!}
                 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
         @endif
         <form wire:submit.prevent='handleSubmit' class="leverage-simple-form">
             {{-- <input type="hidden" name="section" value="leverage_form"> --}}

             {{-- <input type="hidden" name="reCAPTCHA"> --}}
             <!-- Remove this field if you want to disable recaptcha -->

             <div class="row form-group-margin">
                 <div class="col-12 col-md-6 m-0 p-2 ">
                     <input type="text" wire:model.live.debounce.500ms="name"
                         class="form-control field-name @error('name') border-danger @enderror" placeholder="Name">
                     @error('name')
                         <p class="text-danger mt-1">{{ $message }}</p>
                     @enderror
                 </div>
                 <div class="col-12 col-md-6 m-0 p-2 ">
                     <input type="email" wire:model.live.debounce.500ms="email"
                         class="form-control @error('email') border-danger @enderror field-email"
                         placeholder="Email (Optional)">
                     @error('email')
                         <p class="text-danger mt-1">{{ $message }}</p>
                     @enderror

                 </div>
                 <div class="col-12 col-md-6 m-0 p-2 ">
                     <input type="text" wire:model.live.debounce.500ms="phone"
                         class="form-control @error('phone') border-danger @enderror field-phone" placeholder="Phone">
                     @error('phone')
                         <p class="text-danger mt-1">{{ $message }}</p>
                     @enderror

                 </div>
                 <div class="col-12 col-md-6 m-0 p-2 input-group">
                     <div class="input-group mt-0">
                         <i class="icon-arrow-down mr-3"></i>
                         <select wire:model.change="service"
                             class="form-control @error('service') border-danger @enderror field-budget">
                             <option value="" selected disabled>Select service</option>
                             <option value="Social Media Management">Social Media Management</option>
                             <option value="Facebook & Instagram Ads">Facebook & Instagram Ads</option>
                             <option value="Google Ads">Google Ads</option>
                             <option value="Shopify Dropshipping">Shopify Dropshipping</option>
                             <option value="Web Development">Web Development</option>
                         </select>
                     </div>
                     @error('service')
                         <p class="text-danger mt-1">{{ $message }}</p>
                     @enderror

                     {{-- <select name="budget" class="form-control field-budget">
                            <option value="" selected disabled>Select service</option>
                            <option>Less than $2.000</option>
                            <option>$2.000 — $5.000</option>
                            <option>$5.000 — $10.000</option>
                            <option>$10,000+</option>
                        </select> --}}
                 </div>
                 <div class="col-12 m-0 p-2 ">
                     <textarea wire:model.live.debounce.500ms="message"
                         class="form-control @error('message') border-danger @enderror field-message" placeholder="Message"></textarea>
                     @error('message')
                         <p class="text-danger mt-1">{{ $message }}</p>
                     @enderror
                 </div>
                 <div class="col-12 col-12 m-0 pl-md-2">
                     <span class="form-alert"></span>
                 </div>
                 <div class="col-12 input-group m-0 p-2">
                     <button wire:loading type="button" class="btn primary-button effect-motion-bg"
                         wire:target='handleSubmit'>SENDING...</button>
                     <button wire:loading.remove type="submit" class="btn primary-button"
                         wire:target='handleSubmit'>SEND</button>
                     {{-- effect-motion-bg --}}
                 </div>
             </div>
         </form>
     </div>
 </section>
