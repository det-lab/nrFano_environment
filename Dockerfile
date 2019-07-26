FROM continuumio/miniconda3

SHELL ["/bin/bash", "-c"]

RUN echo "name: nr_fano" > nr_fano_env.yml
RUN echo " dependencies:" >> nr_fano_env.yml
RUN echo "   - python>=3.6" >> nr_fano_env.yml
RUN echo "   - anaconda" >> nr_fano_env.yml
RUN echo "   - numpy" >> nr_fano_env.yml
RUN echo "   - scipy" >> nr_fano_env.yml
RUN echo "   - emcee" >> nr_fano_env.yml
RUN echo "   - pandas" >> nr_fano_env.yml
RUN echo "   - astropy::gammapy" >> nr_fano_env.yml
RUN echo "   - astropy::corner" >> nr_fano_env.yml
RUN echo "   - matplotlib" >> nr_fano_env.yml
RUN echo "   - mpld3" >> nr_fano_env.yml
RUN echo "   - tabulate" >> nr_fano_env.yml
RUN echo "   - h5py" >> nr_fano_env.yml
RUN echo "   - lmfit" >> nr_fano_env.yml
RUN echo "   - ipykernel" >> nr_fano_env.yml
RUN echo "   - nb_conda_kernels" >> nr_fano_env.yml
RUN echo "   - anaconda::pytest" >> nr_fano_env.yml
RUN echo "   - pip" >> nr_fano_env.yml
RUN echo "   - pip:" >> nr_fano_env.yml
RUN echo "      - svgpathtools" >> nr_fano_env.yml
RUN echo "      - bootstrapped" >> nr_fano_env.yml

RUN conda config --set always_yes yes --set changeps1 no
#RUN conda env create -n test-environment -f nr_fano_env.yml
RUN 'conda create -n test-environment; \
     conda activate test-environment'
