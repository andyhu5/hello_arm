cargo build --target aarch64-unknown-linux-musl --release && echo -n build done.

scp /home/ubuntu/rust/arm/hello_arm/target/aarch64-unknown-linux-musl/release/hello_arm openailab@192.168.3.173:~/test/hello_arm && echo -n copy done.
echo 'begin to execute.'
ssh openailab@192.168.3.173 './test/hello_arm'


#github clone osxcross
# make macOSX SDK
# copy SDK to tarball
# build osxcross
# setup envs
export PATH="$HOME/osxcross/target/bin:$PATH"
export CC_x86_64_apple_darwin=x86_64-apple-darwin21.2-clang
export CXX_x86_64_apple_darwin=x86_64-apple-darwin21.2-clang++
export AR_x86_64_apple_darwin=x86_64-apple-darwin21.2-ar
export CARGO_TARGET_X86_64_APPLE_DARWIN_LINKER=x86_64-apple-darwin21.2-clang

#build
cargo build -r --target x86_64-apple-darwin

