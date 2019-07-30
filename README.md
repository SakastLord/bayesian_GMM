# bayesian_GMM

### Bayesian inference of Gaussian mixture models

This project provides R and MATLAB functions for performing Gaussian mixture model fitting using a Bayesian approach, using a novel, convenient modification of the standard Gaussian mixture model which allows us to avoid specifying prior parameters. This model is described in detail in this [paper](https://arxiv.org/abs/1405.4895).

### Background

Gaussian mixture models are useful because they are able to fit data with complicated density functions, using only a few parameters. They achieve this by fitting the various peaks or bumps in the density of the data with different Gaussians, as this example plot shows:

![example GMM fit](figures/example_GMM_fit.png?raw=true "Example GMM fit")

For many applications, we would like to use Gaussian mixture models within a Bayesian framework, to be able to employ techniques such as Bayesian model averaging, or to generate Bayesian estimates of the uncertainty of our inference. However, Gaussian mixture models have traditionally been difficult to employ in a Bayesian framework, because they do not allow for noninformative ('flat') priors to be used. Instead, informative priors must be used, which means that we must choose the prior parameters somehow. Choosing values for the parameters is often quite annoying in practice, because it involves a subjective decision with little information available to guide it. In a previous [paper](https://arxiv.org/abs/1405.4895), I developed a modification of the standard Gaussian mixture model which allows noninformative priors to be used, thereby avoiding the parameter specification problem altogether. This project provides R and MATLAB functions that can fit the model to data, by running different forms of Markov Chain Monte Carlo (MCMC) sampling. Two forms of MCMC are provided: standard Metropolis-Hastings, and a collapsed Gibbs sampler.  
