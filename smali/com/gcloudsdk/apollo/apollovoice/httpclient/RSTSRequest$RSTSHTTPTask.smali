.class Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;
.super Ljava/lang/Object;
.source "RSTSRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RSTSHTTPTask"
.end annotation


# instance fields
.field public mContent:Ljava/lang/String;

.field public mEnd:I

.field public mSeq:I

.field public mSession:Ljava/lang/String;

.field public mTimeout:I

.field public mToken:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;


# direct methods
.method public constructor <init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;->mSession:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;->mUrl:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;->mToken:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;->mContent:Ljava/lang/String;

    .line 46
    iput p6, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;->mSeq:I

    .line 47
    iput p7, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;->mEnd:I

    .line 48
    iput p8, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/RSTSRequest$RSTSHTTPTask;->mTimeout:I

    return-void
.end method
