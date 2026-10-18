.class public Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;
.super Ljava/lang/Object;
.source "SRTTAPIHTTPTask.java"


# instance fields
.field public body:[B

.field public key:Ljava/lang/String;

.field public micType:Ljava/lang/String;

.field public seq:I

.field public session:I

.field public timestamp:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->type:I

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->key:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->micType:Ljava/lang/String;

    .line 16
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->body:[B

    .line 17
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    .line 18
    iput-object v1, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->timestamp:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->seq:I

    return-void
.end method
