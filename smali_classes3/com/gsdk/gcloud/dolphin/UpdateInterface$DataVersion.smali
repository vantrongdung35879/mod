.class public Lcom/gsdk/gcloud/dolphin/UpdateInterface$DataVersion;
.super Ljava/lang/Object;
.source "UpdateInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsdk/gcloud/dolphin/UpdateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataVersion"
.end annotation


# instance fields
.field public dataVersion:S

.field final synthetic this$0:Lcom/gsdk/gcloud/dolphin/UpdateInterface;


# direct methods
.method public constructor <init>(Lcom/gsdk/gcloud/dolphin/UpdateInterface;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface$DataVersion;->this$0:Lcom/gsdk/gcloud/dolphin/UpdateInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 15
    iput-short p1, p0, Lcom/gsdk/gcloud/dolphin/UpdateInterface$DataVersion;->dataVersion:S

    return-void
.end method
