.class public final Lcom/ihoc/mgpa/gradish/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->THREAD_MATCH_RULES:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setThreadMatchRules(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/Y0;->a()Lcom/ihoc/mgpa/gradish/Y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/Y0;->b()V

    :cond_0
    return-void
.end method

.method public a(I[F)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    return-void
.end method
