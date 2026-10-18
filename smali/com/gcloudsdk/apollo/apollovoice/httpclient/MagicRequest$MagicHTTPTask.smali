.class Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;
.super Ljava/lang/Object;
.source "MagicRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MagicHTTPTask"
.end annotation


# instance fields
.field public mContent:Ljava/lang/String;

.field public mEnd:I

.field public mSeq:I

.field public mSession:Ljava/lang/String;

.field public mTimeout:I

.field public mToken:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;


# direct methods
.method public constructor <init>(Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->this$0:Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mSession:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mUrl:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mToken:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mContent:Ljava/lang/String;

    .line 45
    iput p6, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mSeq:I

    .line 46
    iput p7, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mEnd:I

    .line 47
    iput p8, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/MagicRequest$MagicHTTPTask;->mTimeout:I

    return-void
.end method
