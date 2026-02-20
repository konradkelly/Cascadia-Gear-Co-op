import { findAllProducts, findRandomProducts, findFeaturedProduct } from '../model/default.repo.js';

export const getAllProducts = () => findAllProducts();

export const getRandomProducts = (limit = 4) => findRandomProducts(limit);

export const getFeaturedProduct = () => findFeaturedProduct();