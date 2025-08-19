@extends($activeTemplate . 'layouts.master2')

@section('content')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<main class="p-2 sm:px-2 flex-1 overflow-auto">

    <div class="p-1 space-y-4">
        <div  >

    <div class="flex justify-center">
        <div class="w-full md:w-2/3 lg:w-1/2">
            <div class="bg-gray-800 shadow-lg rounded-lg">
                <div class="bg-gray-900 p-4 rounded-t-lg">
                    <h5 class="text-white text-lg">@lang('Profile')</h5>
                </div>
                <div class="p-6">
                    <form   method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('First Name')</label>
                                <input type="text" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="firstname" value="{{ $user->firstname }}" required>
                            </div>
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('Last Name')</label>
                                <input type="text" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="lastname" value="{{ $user->lastname }}" required>
                            </div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('E-mail Address')</label>
                                <input class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" value="{{ $user->email }}" readonly>
                            </div>
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('Mobile Number')</label>
                                <input class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" value="{{ $user->mobile }}" readonly>
                            </div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('Address')</label>
                                <input type="text" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="address" value="{{ $user->address }}">
                            </div>
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('State')</label>
                                <input type="text" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="state" value="{{ $user->state }}">
                            </div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('Zip Code')</label>
                                <input type="text" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="zip" value="{{ $user->zip }}">
                            </div>
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('City')</label>
                                <input type="text" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="city" value="{{ $user->city }}">
                            </div>
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('Country')</label>
                                <input class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" value="{{ $user->country_name }}" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn bg-blue-600 text-black w-full py-2 rounded-lg">@lang('Submit')</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>

    <div class="flex justify-center mt-8">
        <div class="w-full md:w-2/3 lg:w-1/2">
            <div class="bg-gray-800 shadow-lg rounded-lg">
                <div class="bg-gray-900 p-4 rounded-t-lg">
                    <h5 class="text-white text-lg">@lang('Change Password')</h5>
                </div>
                <div class="p-6">
                    <form action="{{ route('user.password.update') }}" method="post">
                        @csrf
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('Current Password')</label>
                                <input type="password" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="current_password" required>
                            </div>
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('New Password')</label>
                                <input type="password" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="new_password" required>
                            </div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-4">
                            <div class="form-group">
                                <label class="block text-gray-400">@lang('Confirm New Password')</label>
                                <input type="password" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="new_password_confirmation" required>
                            </div>
                        </div>
                        <div class="form-group mt-4">
                            <button type="submit" class="btn bg-blue-600 text-black w-full py-2 rounded-lg">@lang('Change Password')</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Change Email Section -->
    <div class="flex justify-center mt-8">
        <div class="w-full md:w-2/3 lg:w-1/2">
            <div class="bg-gray-800 shadow-lg rounded-lg">
                <div class="bg-gray-900 p-4 rounded-t-lg">
                    <h5 class="text-white text-lg">@lang('Change Email Address')</h5>
                </div>
                <div class="p-6">
                    <form action="{{ route('user.email.update') }}" method="post">
                        @csrf
                        <div class="form-group mb-4">
                            <label class="block text-gray-400">@lang('Current Email')</label>
                            <input type="email" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2 mb-2" value="{{ $user->email }}" readonly>
                        </div>
                        <div class="form-group mb-4">
                            <label class="block text-gray-400">@lang('New Email Address')</label>
                            <input type="email" class="form-control bg-black text-black border border-gray-600 rounded-lg p-2" name="new_email" required>
                        </div>
                        <div class="form-group mt-4">
                            <button type="submit" class="btn bg-blue-600 text-black w-full py-2 rounded-lg">@lang('Change Email')</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
@if(session('success'))
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '{{ session('success') }}',
            timer: 2500,
            showConfirmButton: false
        });
    </script>
@endif
@if(session('error'))
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '{{ session('error') }}',
            timer: 2500,
            showConfirmButton: false
        });
    </script>
@endif
@if($errors->any())
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '{{ $errors->first() }}',
            timer: 2500,
            showConfirmButton: false
        });
    </script>
@endif
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@endsection
