@extends($activeTemplate . 'layouts.frontend')
<script src="https://cdn.tailwindcss.com"></script>

@section('content')
    <div class="min-h-screen bg-gradient-to-br from-gray-900 to-black py-8 px-4 sm:px-6 lg:px-8">
        <div class="max-w-2xl mx-auto">
            <div class="bg-gradient-to-br from-gray-800 to-gray-900 rounded-2xl shadow-2xl overflow-hidden border border-gray-700">
                <div class="bg-gradient-to-r from-purple-900 via-indigo-900 to-blue-900 py-6 px-8 border-b border-indigo-700">
                    <h2 class="text-2xl font-bold text-white flex items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-indigo-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                        </svg>
                        {{ __($pageTitle) }}
                    </h2>
                    <p class="text-indigo-200 mt-1">@lang('Please complete your profile information to continue')</p>
                </div>

                <div class="p-8">
                    <form method="POST" action="{{ route('user.data.submit') }}" class="space-y-6">
                        @csrf

                        <!-- Username Field -->
                        <div>
                            <label class="block text-sm font-medium text-gray-300 mb-2">@lang('Username')</label>
                            <div class="relative">
                                <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                                    </svg>
                                </div>
                                <input type="text" class="checkUser bg-gray-800 text-white rounded-lg pl-10 pr-4 py-3 w-full border border-gray-700 focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition duration-200"
                                       placeholder="@lang('Choose a username')" name="username" value="{{ old('username') }}" required>
                            </div>
                            <small class="text-red-400 usernameExist"></small>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <!-- Country Field -->
                            <div>
                                <label class="block text-sm font-medium text-gray-300 mb-2">@lang('Country')</label>
                                <div class="relative">
                                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3.055 11H5a2 2 0 012 2v1a2 2 0 002 2 2 2 0 012 2v2.945M8 3.935V5.5A2.5 2.5 0 0010.5 8h.5a2 2 0 012 2 2 2 0 104 0 2 2 0 012-2h1.064M15 20.488V18a2 2 0 012-2h3.064M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                        </svg>
                                    </div>
                                    <select name="country" class="form-select bg-gray-800 text-white rounded-lg pl-10 pr-4 py-3 w-full border border-gray-700 focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none appearance-none transition duration-200">
                                        @foreach ($countries as $key => $country)
                                            <option data-mobile_code="{{ $country->dial_code }}" value="{{ $country->country }}" data-code="{{ $key }}">
                                                {{ __($country->country) }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <div class="absolute inset-y-0 right-0 pr-3 flex items-center pointer-events-none">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 9l4-4 4 4m0 6l-4 4-4-4" />
                                        </svg>
                                    </div>
                                </div>
                            </div>

                            <!-- Mobile Field -->
                            <div>
                                <label class="block text-sm font-medium text-gray-300 mb-2">@lang('Mobile')</label>
                                <div class="flex rounded-md shadow-sm">
                                    <span class="mobile-code inline-flex items-center px-3 rounded-l-md border border-r-0 border-gray-700 bg-gray-700 text-gray-300 text-sm">
                                        +1
                                    </span>
                                    <input type="hidden" name="mobile_code">
                                    <input type="hidden" name="country_code">
                                    <input type="number" name="mobile" value="{{ old('mobile') }}" class="checkUser flex-1 min-w-0 block w-full px-3 py-3 rounded-none rounded-r-md bg-gray-800 text-white border border-gray-700 focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition duration-200" required>
                                </div>
                                <small class="text-red-400 mobileExist"></small>
                            </div>
                        </div>

                        <!-- Additional Fields (Hidden by default) -->
                        <div class="bg-gray-800 p-4 rounded-lg border border-gray-700">
                            <button type="button" id="toggleAdditionalFields" class="flex items-center text-indigo-400 hover:text-indigo-300 transition-colors duration-200">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                </svg>
                                @lang('Additional Information')
                            </button>

                            <div id="additionalFields" class="hidden mt-4 space-y-4">
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                    <div>
                                        <label class="block text-sm font-medium text-gray-300 mb-2">@lang('Address')</label>
                                        <input type="text" class="bg-gray-800 text-white rounded-lg px-4 py-3 w-full border border-gray-700 focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition duration-200" name="address" value="{{ old('address') }}">
                                    </div>
                                    <div>
                                        <label class="block text-sm font-medium text-gray-300 mb-2">@lang('State')</label>
                                        <input type="text" class="bg-gray-800 text-white rounded-lg px-4 py-3 w-full border border-gray-700 focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition duration-200" name="state" value="{{ old('state') }}">
                                    </div>
                                    <div>
                                        <label class="block text-sm font-medium text-gray-300 mb-2">@lang('Zip Code')</label>
                                        <input type="text" class="bg-gray-800 text-white rounded-lg px-4 py-3 w-full border border-gray-700 focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition duration-200" name="zip" value="{{ old('zip') }}">
                                    </div>
                                    <div>
                                        <label class="block text-sm font-medium text-gray-300 mb-2">@lang('City')</label>
                                        <input type="text" class="bg-gray-800 text-white rounded-lg px-4 py-3 w-full border border-gray-700 focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition duration-200" name="city" value="{{ old('city') }}">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="pt-4">
                            <button type="submit" class="w-full bg-gradient-to-r from-indigo-600 to-purple-600 hover:from-indigo-700 hover:to-purple-700 text-white font-medium py-3 px-4 rounded-lg shadow-md hover:shadow-lg transition-all duration-300 flex items-center justify-center">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                                </svg>
                                @lang('Complete Profile')
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script>
        "use strict";
        (function($) {
            @if ($mobileCode)
                $(`option[data-code={{ $mobileCode }}]`).attr('selected', '');
            @endif

            // Initialize mobile code based on selected country
            function initMobileCode() {
                $('input[name=mobile_code]').val($('select[name=country] :selected').data('mobile_code'));
                $('input[name=country_code]').val($('select[name=country] :selected').data('code'));
                $('.mobile-code').text('+' + $('select[name=country] :selected').data('mobile_code'));
            }

            // Initialize on page load
            initMobileCode();

            $('select[name=country]').on('change', function() {
                $('input[name=mobile_code]').val($('select[name=country] :selected').data('mobile_code'));
                $('input[name=country_code]').val($('select[name=country] :selected').data('code'));
                $('.mobile-code').text('+' + $('select[name=country] :selected').data('mobile_code'));
                var value = $('[name=mobile]').val();
                var name = 'mobile';
                checkUser(value, name);
            });

            $('.checkUser').on('focusout', function(e) {
                var value = $(this).val();
                var name = $(this).attr('name')
                checkUser(value, name);
            });

            function checkUser(value, name) {
                var url = '{{ route('user.checkUser') }}';
                var token = '{{ csrf_token() }}';

                if (name == 'mobile') {
                    var mobile = `${value}`;
                    var data = {
                        mobile: mobile,
                        mobile_code: $('.mobile-code').text().substr(1),
                        _token: token
                    }
                }
                if (name == 'username') {
                    var data = {
                        username: value,
                        _token: token
                    }
                }
                $.post(url, data, function(response) {
                    if (response.data != false) {
                        $(`.${response.type}Exist`).text(`${response.field} already exist`);
                    } else {
                        $(`.${response.type}Exist`).text('');
                    }
                });
            }

            // Toggle additional fields
            $('#toggleAdditionalFields').on('click', function() {
                const additionalFields = $('#additionalFields');
                additionalFields.toggleClass('hidden');

                const icon = $(this).find('svg');
                if (additionalFields.hasClass('hidden')) {
                    icon.html('<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />');
                } else {
                    icon.html('<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 15l7-7 7 7" />');
                }
            });
        })(jQuery);
    </script>
@endpush
