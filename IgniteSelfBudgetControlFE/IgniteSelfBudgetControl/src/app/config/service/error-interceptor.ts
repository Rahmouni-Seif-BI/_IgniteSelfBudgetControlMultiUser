import { Injectable } from '@angular/core';
import { HttpEvent, HttpInterceptor, HttpHandler, HttpRequest, HttpErrorResponse } from '@angular/common/http';

import { Observable, throwError } from 'rxjs';

import { catchError } from 'rxjs/operators';
import { ErrorHandlingService } from './error-handling.service';
/** Pass untouched request through to the next request handler. */
@Injectable()
export class ErrorInterceptor implements HttpInterceptor {
  constructor(private errorHandlingService: ErrorHandlingService) {}
  intercept(request: HttpRequest<any>, next: HttpHandler):
    Observable<HttpEvent<any>> {
    //return next.handle(req);
    return next.handle(request).pipe(
      catchError((error: HttpErrorResponse) => {
        this.errorHandlingService.handleError(error);
        return throwError(error);
      })
    );
  }
}