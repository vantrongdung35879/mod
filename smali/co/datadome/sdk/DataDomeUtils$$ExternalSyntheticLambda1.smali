.class public final synthetic Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroid/webkit/ValueCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput p3, p0, Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;->f$3:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget v2, p0, Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lco/datadome/sdk/DataDomeUtils$$ExternalSyntheticLambda1;->f$3:Landroid/webkit/ValueCallback;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lco/datadome/sdk/DataDomeUtils;->$r8$lambda$DreHJWZK6Wqezq44FDOh__e2Y_A(Ljava/lang/String;Ljava/util/List;ILandroid/webkit/ValueCallback;Ljava/lang/Boolean;)V

    return-void
.end method
