# Add SKILL_Tools library
mkdir -p "${PREFIX}/lib/skill/${PKG_NAME}"
for item in "src" "init.ils" "readme.md"; do
	cp -rf "${RECIPE_DIR}/../${item}" \
       "${PREFIX}/lib/skill/${PKG_NAME}"
done

# Build documentation and add it to the conda env
cd docs
make html
mkdir -p "${PREFIX}/docs/${PKG_NAME}"
cp -rf build/html \
   "${PREFIX}/docs/${PKG_NAME}/"
cd ..

